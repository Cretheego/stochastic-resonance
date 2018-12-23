clear all
A1=10;
A2=20;
A3=30;
D=0:0.1:10;
SNR1= sqrt(2)*(A1./D).^2.*exp(-1./D);
SNR2= sqrt(2)*(A2./D).^2.*exp(-1./D);
SNR3= sqrt(2)*(A3./D).^2.*exp(-1./D);
figure(5)
hold on
plot(SNR1)
plot(SNR2)
plot(SNR3)
hold off
