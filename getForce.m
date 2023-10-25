% force on body1 by body2

function [f1, f2, f3] = getForce(body1, body2)

G = 6.67430e-11;

[d1, d2, d3, d] = getDistance(body1, body2);

F = (G*body1.m*body2.m)/(d^2);

f1 = F*(d1/d);
f2 = F*(d2/d);
f3 = F*(d3/d);

end