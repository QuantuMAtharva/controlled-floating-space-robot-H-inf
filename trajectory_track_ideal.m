theta_0=[40;10;5;6;8;61];
% theta_0=[0;0;0;0;0;0];
theta_f=[90; 74.4; 57.2; 28.6; 11.5; 17];
t=0:0.01:1;
theta_t_1=theta_0(1) + (theta_f(1)-theta_0(1))*(6*t.^5-15*t.^4+10*t.^3);
theta_t_2=theta_0(2) + (theta_f(2)-theta_0(2))*(6*t.^5-15*t.^4+10*t.^3);
theta_t_3=theta_0(3) + (theta_f(3)-theta_0(3))*(6*t.^5-15*t.^4+10*t.^3);
theta_t_4=theta_0(4) + (theta_f(4)-theta_0(4))*(6*t.^5-15*t.^4+10*t.^3);
theta_t_5=theta_0(5) + (theta_f(5)-theta_0(5))*(6*t.^5-15*t.^4+10*t.^3);
theta_t_6=theta_0(6) + (theta_f(6)-theta_0(6))*(6*t.^5-15*t.^4+10*t.^3);
plot(t,theta_t_1);
hold on
plot(t,theta_t_2);
hold off
hold on
plot(t,theta_t_6);
hold off
hold on
plot(t,theta_t_3);
hold off
hold on
plot(t,theta_t_4);
hold off
hold on
plot(t,theta_t_5);
hold off
title('Trajectory Tracking for desired joint angles (Ideal Expected Behaviour)')
xlabel('Time')
ylabel('Joint Angles')
legend('theta_t_1','theta_t_2','theta_t_3','theta_t_4','theta_t_5','theta_t_6')