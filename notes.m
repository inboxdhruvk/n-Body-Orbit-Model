% 2 - satellites orbiting earth:
% 
% earth = Body(5.97219e24, [0,0,0], [0,0,0], "green");
% iss = Body(420000, [0,6778100,0], [7660,0,0], "blue");
% sat2 = Body(420000, [0,0,6778100], [7568.32224055,1181.56610614,0], "red");
% 
% dt = 20; % update every dt seconds
% t = 560/2; % update t times
% waitTime = 0.01; % how many seconds to wait between plots
% 
% allBodies = [earth, iss, sat2];