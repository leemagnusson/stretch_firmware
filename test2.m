L = 3.6e-3;
R = 1.2;
ns = 200;
V = 12;

rpm = linspace(100,2000,2000)';
t = 1./(rpm/60*ns);

i = V/R*(1-exp(-R/L*t));

figure(1);
plot(t,i);
grid on

iavg = 1./t.*(V/R*(t + L/R*exp(-R/L*t)) - V*L/R^2);

figure(2);
plot(rpm,iavg);
grid on
xlabel('rpm')
ylabel('current (A)')