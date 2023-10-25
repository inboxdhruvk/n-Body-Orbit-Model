function setPosition(body, dt)

body.p(1) = body.p(1) + body.v(1)*dt;
body.xCoordinates(end+1) = body.p(1);
body.p(2) = body.p(2) + body.v(2)*dt;
body.yCoordinates(end+1) = body.p(2);
body.p(3) = body.p(3) + body.v(3)*dt;
body.zCoordinates(end+1) = body.p(3);

end