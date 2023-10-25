function setVelocity(body, dt)

ax = body.f(1)/body.m;
ay = body.f(2)/body.m;
az = body.f(3)/body.m;

body.v(1) = body.v(1) + ax*dt;
body.v(2) = body.v(2) + ay*dt;
body.v(3) = body.v(3) + az*dt;

end