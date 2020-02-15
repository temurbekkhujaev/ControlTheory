syms x(t)
Dx = diff(x);

ode = diff(x,t,2) == -2 * Dx + 3 * x + sin(4 * t);
cond1 = Dx(0) == 3;
cond2 = x(0) == 2;

conds = [cond1 cond2];
xSol(t) = dsolve(ode, conds);
xSol = simplify(xSol);

var = 0:0.05:15;
plot(var,xSol(var));

