clear
clc
xdel(winsid())


exec('/home/enielma/Área de Trabalho/cargas/Efield.sci')
x = -3:0.5:3;
y = -3:0.5:3;

        
q1 = 1e-9;//Esses quatros pontos que determina a malha??
p1 = [-1 0];

q2 = -1e-9;
p2 = [1 0];
        

e1 = Cfield(q1,p1,x,y);
e2 = Cfield(q2,p2,x,y);

e1x = e1(:,:,1);
e1y = e1(:,:,2);

e2x = e2(:,:,1);
e2y = e2(:,:,2);

Ex = e1x + e2x;
Ey = e1y + e2y;

figure;
champ(x, y, Ex,Ey)


