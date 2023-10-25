
% mass, position vector, velocity vector, color on plot
earth = Body(5.97219e24, [0,0,0], [0,0,0], "green");
sat1 = Body(420000, [0,6778100,0], [7660,0,0], "blue");
sat2 = Body(420000, [0,0,6778100], [7568.32224055,1181.56610614,0], "red");
sat3 = Body(4e23, [6778100, 0, 0], [0, -5108.74555226, 5707.56680927], "magenta");
moon = Body(7.34767309e22, [0, 384000000, 0], [-1022, 0 0], "black");

dt = 10; % update every dt seconds
t = 560; % update t times
waitTime = 0.01; % how many seconds to wait between plots

allBodies = [earth, sat1, sat2, sat3];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1:t

    for body = allBodies % update object force property
        body.f = [0,0,0];
        otherBodies = allBodies(allBodies~=body); % creates list including all other bodies
        for otherBody = otherBodies
            [f1, f2, f3] = getForce(body, otherBody);
            body.f = body.f + [f1, f2, f3];
        end
    end
    
    for body = allBodies % update object velocity property
        setVelocity(body, dt);
    end
    
    for body = allBodies % update object position property
        setPosition(body, dt)
    end

end

% plot

for i = 1:t

    for body = (allBodies)
        
        scatter3(body.xCoordinates(i), body.yCoordinates(i), body.zCoordinates(i), ".", body.c)
        hold on
    
    end

    pause(waitTime);

end


