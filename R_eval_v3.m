gamma_d=0.2;
E=eye(6);
Q1_sc=0.6*E;
Q1_m=0.6*E;
Q2_sc=5*E;
Q2_m=5*E;
Q1=[Q1_sc zeros(6);zeros(6) Q1_m];
Q2=[Q2_sc zeros(6); zeros(6) Q2_m];
Q12=zeros(12);
K=((Q1'*Q2+Q2'*Q1-Q12'-Q12)/2);
%     R=0.2*rand(6);
%     S=0.2*eye(6);
%     R=min(R,S);

R=[0.039;0.039;0.039;0.039;0.039;0.0384616];
    C=inv(inv(R)-(E/(gamma_d^2)));
    temp=C.'*C;
    L=chol(temp,'lower');
    R1=L\(L'\C.');
    Q = [Q1'*Q1 Q12;Q12' Q2'*Q2];
    T11_sc = R1'*Q1_sc;
    T11_m = R1'*Q2_sc;
    T12_sc = R1'*Q1_m;
    T12_m = R1'*Q2_m;
    T0=[E zeros(6) zeros(6) zeros(6);zeros(6) E zeros(6) zeros(6);T11_sc zeros(6) T12_sc zeros(6);zeros(6) T11_m zeros(6) T12_m];
%     B=[zeros(6) zeros(6); zeros(6) zeros(6); eye(3) zeros(6); zeros(6) eye(3)];
    B=[zeros(18,3) zeros(18,3); eye(3) zeros(3); zeros(3) eye(3)];
    eq_11_sol=[zeros(12) K; K zeros(12)]-T0'*B*(inv(R)-(E/(gamma_d^2)))*B'*T0+Q