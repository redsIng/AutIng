classdef Network < handle

    properties
        numLayers %Numero di livelli
        numNeurons %Numero di neurone di ogni livello o vettore per ogni livello
        parameters % parametri
        input   %Numero di canali in ingresso
        output %numero di canalli in uscita
        epoch %numero di epoche di training
        batch %numero di batch di training
        learningRate %rate di apprenidmendo
        decayRate % Rate di influenza dei risultati
        mbq %minibatchqueue to manage training
        executionEnvironment
        averageGrad
        averageSqGrad
        accfun
        lineLoss
    end

    methods
        function obj = Network(nLayer,nNeurons,input,output)
            %NETWORK Construct an instance of this class
            %   Detailed explanation goes here
            obj.numLayers = nLayer;
            obj.numNeurons= nNeurons;
            obj.input = input;
            obj.output = output;
            obj.parameters = struct;
            obj.executionEnvironment="auto";
            obj.averageGrad = [];
            obj.averageSqGrad = [];
        end

        function obj = initializeNetwork(obj)
            % inizializzo l'input
            sz=[obj.numNeurons(1) obj.input];
            obj.parameters.fc1.Weights = initializeHe(sz,obj.input);
            obj.parameters.fc1.Bias = initializeZeros([obj.numNeurons 1]);
            neuronLayer=1;

            %Inizializzo layer centrali
            for layerNumber=2:obj.numLayers-1
                name = "fc"+layerNumber;
                if size(obj.numNeurons,2)~=1
                    neuronLayer=layerNumber;
                end
                sz = [obj.numNeurons(1,neuronLayer) obj.numNeurons(1,neuronLayer)];
                numIn = obj.numNeurons(1,neuronLayer);
                obj.parameters.(name).Weights = initializeHe(sz,numIn);
                obj.parameters.(name).Bias = initializeZeros([obj.numNeurons(1,neuronLayer) 1]);
            end
            %Inizializzo l'ouput
            sz = [1 obj.numNeurons(1,end)];
            numIn = obj.numNeurons(1,end);
            obj.parameters.("fc" + obj.numLayers).Weights = initializeHe(sz,numIn);
            obj.parameters.("fc" + obj.numLayers).Bias = initializeZeros([obj.output 1]);
        end

        function obj=setTrainOpt(obj,epoch,batch,learnRate,decRate)
            obj.epoch=epoch;
            obj.batch=batch;
            obj.learningRate=learnRate;
            obj.decayRate=decRate;
        end
        function r =getTrainOpt(obj)
            r =[obj.epoch,obj.batch,obj.learningRate,obj.decayRate];
        end
        function [X0,T0,U0] = setupTrain(obj,cond,ds)
            obj.mbq = minibatchqueue(ds, ...
                MiniBatchSize=obj.batch, ...
                MiniBatchFormat="BC", ...
                OutputEnvironment=obj.executionEnvironment);
            X0 = dlarray(cond(1),"CB");
            T0 = dlarray(cond(2),"CB");
            U0 = dlarray(cond(3));
            if (obj.executionEnvironment == "auto" && canUseGPU) || (obj.executionEnvironment == "gpu")
                X0 = gpuArray(X0);
                T0 = gpuArray(T0);
                U0 = gpuArray(U0);
            end
            obj.accfun = dlaccelerate(@modelLoss);
            obj.trainingProgress();
        end
        function obj=trainingProgress(obj)
            figure
            C = colororder;
            obj.lineLoss = animatedline(Color=C(2,:));
            ylim([0 inf])
            xlabel("Iteration")
            ylabel("Loss")
            grid on
        end
        function obj=train(obj,X0,T0,U0)
            start = tic;

            iteration = 0;

            for ep = 1:obj.epoch
                reset(obj.mbq);

                while hasdata(obj.mbq)
                    iteration = iteration + 1;

                    XT = next(obj.mbq);
                    X = XT(1,:);
                    T = XT(2,:);

                    % Evaluate the model loss and gradients using dlfeval and the
                    % modelLoss function.
                    [loss,gradients] = dlfeval(obj.accfun,obj.parameters,X,T,X0,T0,U0);

                    % Update learning rate.
                    obj.learningRate = obj.learningRate / (1+obj.decayRate*iteration);

                    % Update the network parameters using the adamupdate function.
                    [obj.parameters,obj.averageGrad,obj.averageSqGrad] = adamupdate(obj.parameters,gradients,obj.averageGrad, ...
                        obj.averageSqGrad,iteration,obj.learningRate);
                end
%                 if mod(ep,50) ==0
                    % Plot training progress.
                    loss = double(gather(extractdata(loss)));
                    addpoints(obj.lineLoss,iteration, loss);

%                     D = duration(0,0,toc(start),Format="hh:mm:ss");
%                     title("Epoch: " + ep + ", Elapsed: " + string(D) + ", Loss: " + loss)
%                     drawnow
%                 end
            end
            function obj=tests(obj,tTest,numPredictions,XTest)
                figure

                for i=1:numel(tTest)
                    t = tTest(i);
                    TTest = t*ones(1,numPredictions);

                    % Make predictions.
                    XTest = dlarray(XTest,"CB");
                    TTest = dlarray(TTest,"CB");
                    UPred = model(obj.parameters,XTest,TTest);

                    % Calculate true values.
                    UTest = solveBurgers(extractdata(XTest),t,0.01/pi);

                    % Calculate error.
                    err = norm(extractdata(UPred) - UTest) / norm(UTest);

                    % Plot predictions.
                    subplot(2,2,i)
                    plot(XTest,extractdata(UPred),"-",LineWidth=2);
                    ylim([-1.1, 1.1])

                    % Plot true values.
                    hold on
                    plot(XTest, UTest, "--",LineWidth=2)
                    hold off

                    title("t = " + t + ", Error = " + gather(err));
                end

                subplot(2,2,2)
                legend("Predicted","True")
            end
        end
        function obj=model(obj)
            XT = [X;T];
            obj.numLayers = numel(fieldnames(obj.parameters));

            % First fully connect operation.
            weights = obj.parameters.fc1.Weights;
            bias = obj.parameters.fc1.Bias;
            U = fullyconnect(XT,weights,bias);

            % tanh and fully connect operations for remaining layers.
            for i=2:obj.numLayers
                name = "fc" + i;

                U = tanh(U);

                weights = obj.parameters.(name).Weights;
                bias = obj.parameters.(name).Bias;
                U = fullyconnect(U, weights, bias);
            end

        end
    end
end


