function wave = wavePulse(tau,T,t,n)
% wave = wavePulse(tau,T,t,n), na przyklad:
% wave = wavePulse(0.1,1,linspace(0,2,1000),42);
% puls trwajacy 0.1, o okresie 1, zlozony z 42 cosinusow

len = length(t);

wave = zeros(1,len) + tau/T;

for i = 1:n
    wave = wave + (2/i/pi)*sin(pi*i*tau/T)*cos(2*pi*i*t/T);
end


end