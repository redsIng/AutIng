clear all
close all
clc

n1 = 30;
n2 = 30;

a0 = 7;
gain = 10;
cost = 2;

S = (n1+1)*(n2+1);
A = 2*a0 + 1;

numCars1 = 0:n1;
numCars2 = 0:n2;

lambdaReturn1 = 3;
probReturn1 = lambdaReturn1.^numCars1./factorial(numCars1)*exp(-lambdaReturn1);
probReturn1(end) = 1 - sum(probReturn1(1:end-1));

lambdaReturn2 = 2;
probReturn2 = lambdaReturn2.^numCars2./factorial(numCars2)*exp(-lambdaReturn2);
probReturn2(end) = 1 - sum(probReturn2(1:end-1));

lambdaRental1 = 3;
probRental1 = lambdaRental1.^numCars1./factorial(numCars1)*exp(-lambdaRental1);
probRental1(end) = 1 - sum(probRental1(1:end-1));

lambdaRental2 = 4;
probRental2 = lambdaRental2.^numCars2./factorial(numCars2)*exp(-lambdaRental2);
probRental2(end) = 1 - sum(probRental2(1:end-1));

P1 = zeros(S,S);
for s = 1:S
    [num1, num2] = ind2sub([n1+1 n2+1], s);
    num1 = num1 - 1;
    num2 = num2 - 1;
    numNew1 = min(num1 + numCars1, n1);
    for i = 1:length(numNew1)
        sp = sub2ind([n1+1 n2+1], numNew1(i)+1, num2+1);
        P1(s, sp) = P1(s, sp) + probReturn1(i);
    end
end

P2 = zeros(S,S);
for s = 1:S
    [num1, num2] = ind2sub([n1+1 n2+1], s);
    num1 = num1 - 1;
    num2 = num2 - 1;
    numNew2 = min(num2 + numCars2, n2);
    for i = 1:length(numNew2)
        sp = sub2ind([n1+1 n2+1], num1 + 1, numNew2(i) + 1);
        P2(s, sp) = P2(s, sp) + probReturn2(i);
    end
end

Pret = P1*P2;

P3 = zeros(S,S);
for s = 1:S
    [num1, num2] = ind2sub([n1+1 n2+1], s);
    num1 = num1 - 1;
    num2 = num2 - 1;
    numNew1 = max(num1 - numCars1, 0);
    for i = 1:length(numNew1)
        sp = sub2ind([n1+1 n2+1], numNew1(i)+1, num2+1);
        P3(s, sp) = P3(s, sp) + probRental1(i);
    end
end

P4 = zeros(S,S);
for s = 1:S
    [num1, num2] = ind2sub([n1+1 n2+1], s);
    num1 = num1 - 1;
    num2 = num2 - 1;
    numNew2 = max(num2 - numCars2, 0);
    for i = 1:length(numNew2)
        sp = sub2ind([n1+1 n2+1], num1 + 1, numNew2(i) + 1);
        P4(s, sp) = P4(s, sp) + probRental2(i);
    end
end

Prental = P3*P4;

Pmove = zeros(S,S,A);
for s = 1:S
    [num1, num2] = ind2sub([n1+1 n2+1], s);
    num1 = num1 - 1;
    num2 = num2 - 1;
    for a = 1:A
        moved = a - a0 - 1;
        amoved = max(-num2, min(moved, num1));
        numNew1 = min(num1 - amoved, n1);
        numNew2 = min(num2 + amoved, n2);
        sp = sub2ind([n1+1 n2+1], numNew1 + 1, numNew2 + 1);
        Pmove(s,sp,a) = 1;
    end
end

P = zeros(S,S,A);
for a = 1:A
    P(:,:,a) = Pret*Prental*Pmove(:,:,a);
end

earning = zeros(S,1);
for s = 1:S
    [num1, num2] = ind2sub([n1+1 n2+1], s);
    num1 = num1 - 1;
    num2 = num2 - 1;
    numAvail1 = 0:num1;
    probRent1 = probRental1(1:num1+1);
    probRent1(end) = 1 - sum(probRent1(1:end-1));
    numAvail2 = 0:num2;
    probRent2 = probRental2(1:num2+1);
    probRent2(end) = 1 - sum(probRent2(1:end-1));
    earning(s) = gain*(sum(numAvail1.*probRent1) + sum(numAvail2.*probRent2));
end

R = zeros(S,A);
for a = 1:A
    moved = a - a0 - 1;
    R(:,a) = Pret*earning - cost*abs(moved);
end

save data_jcr.mat P R
