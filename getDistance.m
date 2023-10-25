function [d1, d2, d3, d] = getDistance(body1, body2)

d1 = body2.p(1) - body1.p(1);
d2 = body2.p(2) - body1.p(2);
d3 = body2.p(3) - body1.p(3);
d = sqrt( d1^2 + d2^2 + d3^2 );

end