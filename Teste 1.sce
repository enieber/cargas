function [ fieldE, rvector ,rnorm ] = Efield(q0,P0,P);
Efield calcula o campo elétrico estático no ponto P, devido a uma carga q0
 localizada no ponto P0
 Uso: [ fieldE, rvector ,rnorm ] = Efield(q0,P0,P);
eps0 = 8.854187817e-12;
rvector = P-P0;
rnorm = norm(rvector);
fieldE = 1/(4*pi*eps0)*q0*(P-P0)./(norm(P-P0).^3);
end
