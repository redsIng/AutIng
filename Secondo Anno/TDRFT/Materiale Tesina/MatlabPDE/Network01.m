%% Net 01

function [X,parameters] = Network01(X,Predict,parameters)

%% Net configuration (only fullyconnet)

Layer = [20 20 20 20 20];

if Predict == 0

    parameters = [];
    %% Initialise net
        
    for i = 1 : length(Layer)
    
        parameters.("p"+i).weights = dlarray(randn([Layer(i) size(X,1)])/10);
        parameters.("p"+i).bias = dlarray(randn([Layer(i) 1])/20);
    
        X = fullyconnect(X,parameters.("p"+i).weights,parameters.("p"+i).bias);
    
        X = tanh(X);
    
    end
    
    parameters.output.weights = dlarray(randn([7 size(X,1)]));
    parameters.output.bias = dlarray(randn([7 1])/10);
    
    X = fullyconnect(X,parameters.output.weights,parameters.output.bias);

else 

    for i = 1 : length(Layer)

        X = fullyconnect(X,parameters.("p"+i).weights,parameters.("p"+i).bias);    
        X = tanh(X);
    
    end
   
    X = fullyconnect(X,parameters.output.weights,parameters.output.bias);

    X(4:7,:,1) = X(4:7,:,1)*(1/(4*pi*1e-7));

end








