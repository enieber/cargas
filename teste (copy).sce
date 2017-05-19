clear
clc

q1 = 1e-9;
P1 = [0 0];

x = -1:0.1:1;
y = -1:0.1:1;

for i = 1:length(x)
    for j = 1: length(y)
        P(i,j,:) = [x(i) y(j)];
        E1(i,j,:) = Efield(q1,P1,squeeze(P(i,j,:))');
    end
end

%%

[X,Y] = meshgrid(x,y);
E1x = E1(:,:,2);
E1y = E1(:,:,1);


%%

q2 = -1e-9;
P2 = [-0.5 0.5];

x = -1:0.1:1;
y = -1:0.1:1;

for i = 1:length(x)
    for j = 1: length(y)
        P(i,j,:) = [x(i) y(j)];
        E2(i,j,:) = Efield(q2,P2,squeeze(P(i,j,:))');
    end
end

%%

E2x = E2(:,:,2);
E2y = E2(:,:,1);

%%



Ex = E1x + E2x;
Ey = E1y + E2y;

%%

figure;
quiver(X, Y, Ex,Ey)
