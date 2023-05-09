gamma_d = 0.2;
E = eye(6);
Q1_sc = 0.6*E;
Q1_m = 0.6*E;
Q2_sc = 5*E;
Q2_m = 5*E;
Q1 = [Q1_sc zeros(6); zeros(6) Q1_m];
Q2 = [Q2_sc zeros(6); zeros(6) Q2_m];
Q12 = zeros(12);
K = ((Q1'*Q2+Q2'*Q1-Q12'-Q12)/2);

R0 = 0.2*eye(6);
options = optimset('TolFun',1e-8);
f = @(R) norm(eq_11(R, K, Q1, Q2, Q12, E, gamma_d));
R_opt = fminsearch(f, R0, options);