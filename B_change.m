clear all
b1=10;
b2=20;
b3=30;
b=10^7:10000:10^8;
% SNR1= sqrt(2)*(A1./D).^2.*exp(-1./D);
% SNR2= sqrt(2)*(A2./D).^2.*exp(-1./D);
% SNR3= sqrt(2)*(A3./D).^2.*exp(-1./D);
A = 0.6;
a=30000;
D = 2*10^(-5);
R = A/D;
w0 = 0.1;
M = sqrt(2)*(1./(4*b)).*R^2.*exp(-1./(4*b*D*a));
N=1/(sqrt(2)*pi).*exp(-1./(4*b*D*a));
f = M./(1-(1/pi).*M.*4./(4.*N+w0^2./N));
b0=b;
b=ones(1,length(b));
a=1;
M1 = sqrt(2)*(1./(4*b)).*R^2.*exp(-1./(4*b*D*a));
N1=1/(sqrt(2)*pi).*exp(-1./(4*b*D*a));
f1 = M1./(1-(1/pi).*M1.*4./(4.*N1+w0^2./N1));
figure(5)
plot(b0,f)
figure(6)
plot(b0,f1)


