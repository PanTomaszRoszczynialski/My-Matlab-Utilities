function y = gausy(list,drift,whd)

%robi z listy dwuwierszowa macierz do funkcji "loso", w ktorej jest
%podana lsita z gausowym prawdopodobienstwem, dla szerokosci fwhm i 
%przesuniecia (skwantowane).
%whd (0.5 ~ 4) - dla mniejszych wartosci ostrzejszy peak.


n = length(list);

n0 = ceil(n/2);
s = whd;

x0 = n0 + drift;


x = linspace(1,n,n);


gau = exp( - ( x - x0 ).^2/s^2 );
%gau = gau/sum(gau); % na chuj mi normalizacja
y = [list;
     gau ];
