function y = gausy(list,drift,whd)
% This should generate relative probabilities with gaussian
% distribution for provided list of numbers, from which one can
% be later randomly chosen with special loso.m function

    n = length(list);

    n0 = ceil(n/2);
    s = whd;

    x0 = n0 + drift;


    x = linspace(1,n,n);


    gau = exp( - ( x - x0 ).^2/s^2 );
    y = [list; gau];
