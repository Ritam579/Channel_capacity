% Compute the channel capacity for varying path loss exponent.

B = 100*10^3; %Hz
No = 10^(-9);
n = 2:7;
Pt = 1;
d0 = 10; %Reference distance
d = 100;
Pr = Pt*(d0/d).^n;
SNR = Pr./(No*B);
C = B.*log2(1+SNR);
semilogy(n,C,'LineWidth',2);
xlabel('Pathloss Exponent');
ylabel('Capacity(bits/sec)');
