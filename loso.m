function out = loso(mat);
% Choose a random value from the first row, 
% based on the probabilities provided in the
% second row (no need for normalisation)

    L = length(mat(1,:)); 
    S = sum(mat(2,:));

    bins = mat(2,1);

    for i=2:L
        bins = [bins bins(i-1)+mat(2,i)];
    end
    bins;
    R = S*rand;

    for i=1:L
        if R <= bins(i)
            ind = i;
            break;
        end
    end
        

    out = mat(1,ind);
