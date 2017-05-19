function [ fieldE, vectorR ,normR ] = Efield(q,p0,p)
//Efield calcula o campo elétrico estático no ponto P, devido a uma carga q0
//localizada no ponto P0
//   
// Uso: [ fieldE, rvector ,rnorm ] = Efield(q0,p0,p)
//

eps = 8.854187817e-12;
vectorR = p-p0;
normR = norm(vectorR);
fieldE = 1/(4*%pi*eps)*q0*(p-p0)./(norm(p-p0).^3+%eps);//fórmula do campo eletrico
endfunction

function E = Cfield(q0,p0,x,y)
    for i = 1:length(x)//Isso é matriz??
        for j = 1:length(y)//Isso tambem??
            p(i,j,:) = [x(i) y(j)];
            E(i,j,:) = Efield(q0,p0,squeeze(p(i,j,:))');
        end
    end
endfunction
