syms t s X

RHS = laplace(sin(4*t));

X1 = s * X - 2;
X2 = s * X1 - 3;

sols = solve(X2 + 2 * X1 - 3 * X - RHS, X);
solt = ilaplace(sols,s,t);


pretty(solt)

fplot(solt,[0,8])
grid on