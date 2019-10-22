close all;
clear all; 

A=20;
R=15;
rho=1000;
g=10;

taup = A*R; 
Kp = 10^(-5)*rho*g*R;
t0 = 1800;
value_before_step = 2;
value_after_step = 3;
simtime = 4000;
Kc=2;

sim('task')

time = ans.ControlFirstOrderRes(:,1);
Qin = ans.ControlFirstOrderRes(:,2);
p = ans.ControlFirstOrderRes(:,3);
Psp = ans.ControlFirstOrderRes(:,4);

figure(1)
set(gca,'FontSize',12)
plot(time,Qin,'g',time,p,'b',time,Psp,'k--','LineWidth',2)
legend('Qin','p','Psp','Location','SouthEast')