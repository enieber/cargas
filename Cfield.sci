function E= Cfield(q0,P0,x,y)
for i = 1:length(x)
    for j = 1:length(y)
        P(i,j,:) = [x(i) y(j)];
        E(i,j,:) = Efield(q0,P0,squeeze(P(i,j,:))');
    end
end
endfunction
