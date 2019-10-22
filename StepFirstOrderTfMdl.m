close all;
clear all; 

tau = 60; 
K = 3;
t0 = 120;
value_before_step = 0;
value_after_step = 2;
simtime = 600;

sim('firstorder')
time = ans.ResFirstOrder(:,1);
Qin = ans.ResFirstOrder(:,2);
h = ans.ResFirstOrder(:,3);
figure(1)
set(gca,'FontSize',12)
plot(time,Qin,'k--',time,h,'o','LineWidth',2)
legend('inflow [m^3/s]','liquid level [m]','Location','SouthEast')
xlabel('time [s]')

hold on
t0 = 60;
sim('firstorder')
time2 = ans.ResFirstOrder(:,1);
Qin2 = ans.ResFirstOrder(:,2);
h2 = ans.ResFirstOrder(:,3);
plot(time2,Qin2,'k--',time2,h2,'p','LineWidth',2)
legend('inflow [m^3/s]','liquid level [m]','Location','SouthEast')
xlabel('time [s]')

hold on
t0 = 180;
sim('firstorder')
time3 = ans.ResFirstOrder(:,1);
Qin3 = ans.ResFirstOrder(:,2);
h3 = ans.ResFirstOrder(:,3);
plot(time3,Qin3,'k--',time3,h3,'h','LineWidth',2)
legend('inflow [m^3/s]','liquid level [m]','Location','SouthEast')
xlabel('time [s]')

figure(2)
set(gca,'FontSize',12)
plot(time,Qin,'k--',time,h,'o','LineWidth',2)

hold on
value_after_step = 1;
sim('firstorder')
time4 = ans.ResFirstOrder(:,1);
Qin4 = ans.ResFirstOrder(:,2);
h4 = ans.ResFirstOrder(:,3);
plot(time4,Qin4,'k--',time4,h4,'g','LineWidth',2)
legend('inflow [m^3/s]','liquid level [m]','Location','SouthEast')
xlabel('time [s]')

hold on
value_after_step = 4;
sim('firstorder')
time5 = ans.ResFirstOrder(:,1);
Qin5 = ans.ResFirstOrder(:,2);
h5 = ans.ResFirstOrder(:,3);
plot(time5,Qin5,'k--',time5,h5,'r','LineWidth',2)
legend('inflow [m^3/s]','liquid level [m]','Location','SouthEast')
xlabel('time [s]')