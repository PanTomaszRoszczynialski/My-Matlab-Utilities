function y = loso(mat);
%WAGI W DRUGIM WIERSZU!!!!!!%

L = length(mat(1,:)); %dlugosc macierzy (liczba kolumn...)
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
    

y = mat(1,ind);