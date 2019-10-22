% FirstOrderInfluenceKtau_Ufora.m
% =================================
% m-file with Simulink model StepFirstOrderTfMdlbis.mdl
%
close all;  % closes all open figure windows
clear all;  % removes all variables, globals, functions and other 
            % from the workspace
%
% parameters step input
t0 = 1;                   % time of step 
value_before_step = 0;    % original input value
value_after_step  = 1;    % input value after step
% simulated time
simtime = 20;
%
% run model for various values of K
% save results and display them in graph afterwards
K=1;
tau=1;
K1=K;
tau1=tau;
sim('StepFirstOrderTfMdl');
time1         = ans.ResFirstOrder(:,1);
stepinput1    = ans.ResFirstOrder(:,2);
stepresponse1 = ans.ResFirstOrder(:,3);
%
K=1;
tau=2;
K2=K;
tau2=tau;
sim('StepFirstOrderTfMdl');
time2         = ans.ResFirstOrder(:,1);  
% note: vector 'time2' may be different from 'time1'
stepresponse2 = ans.ResFirstOrder(:,3);
%
K=1;
tau=3;
K3=K;
tau3=tau;
sim('StepFirstOrderTfMdl');
time3         = ans.ResFirstOrder(:,1);  
stepresponse3 = ans.ResFirstOrder(:,3);
%
K=2;
tau=2;
K4=K;
tau4=tau;
sim('StepFirstOrderTfMdl');
time4         = ans.ResFirstOrder(:,1);  
stepresponse4 = ans.ResFirstOrder(:,3);
%
K=3;
tau=2;
K5=K;
tau5=tau;
sim('StepFirstOrderTfMdl');
time5         = ans.ResFirstOrder(:,1);  
stepresponse5 = ans.ResFirstOrder(:,3);
%
% Influence of tau
figure(1) 
plot(time1,stepinput1,'g--',time1,stepresponse1,'b',time2,...
    stepresponse2,'c-.',time3,stepresponse3,'m:')
legend('step input',...
       ['K=' num2str(K1) '; \tau='  num2str(tau1)],...
       ['K=' num2str(K2) '; \tau='  num2str(tau2)],...
       ['K=' num2str(K3) '; \tau='  num2str(tau3)])
title('Influence \tau')
xlabel('time')
ylabel('step response')
%
% Influence of K
figure(2) 
plot(time1,stepinput1,'g--',time2,stepresponse2,'b',time4,...
    stepresponse4,'c-.',time5,stepresponse5,'m:')
legend('step input',...
       ['K=' num2str(K2) '; \tau='  num2str(tau2)],...
       ['K=' num2str(K4) '; \tau='  num2str(tau4)],...
       ['K=' num2str(K5) '; \tau='  num2str(tau5)])
title('Influence K')
xlabel('time')
ylabel('step response')



