function dydt = three_body_system(t,r,G,m)

% three_body_system evaluate the equation of motion ODEs for the three body
% system.

% For this system:
% G = gravitational constant
% m = [m1 m2 m3] = masses of the system
% t = time

% Positions:
% r(1) = x position of object 1
% r(2) = y position of object 1
% r(3) = x position of object 2
% r(4) = y position of object 2
% r(5) = x position of object 3
% r(6) = y position of object 3

% Velocities:
% r(7) =  x velocity of object 1
% r(8) =  y velocity of object 1
% r(9) =  x velocity of object 2
% r(10) = y velocity of object 2
% r(11) = x velocity of object 3
% r(12) = y velocity of object 3

dydt = ... Velocity components:
    [r(7);r(8);r(9);r(10);r(11);r(12);...
    ... EoM of position in x of object 1:
    (-G*m(2)*(r(1)-r(3)) / sqrt((r(1)-r(3))^2 + (r(2)-r(4))^2)^3 ...
    -G*m(3)*(r(1)-r(5)) / sqrt((r(1)-r(5))^2 + (r(2)-r(6))^2)^3);...
    ... EoM of position in y of object 1:
    (-G*m(2)*(r(2)-r(4)) / sqrt((r(1)-r(3))^2 + (r(2)-r(4))^2)^3 ...
    -G*m(3)*(r(2)-r(6)) / sqrt((r(1)-r(5))^2 + (r(2)-r(6))^2)^3);...
    ... EoM of position in x of object 2:
    (-G*m(1)*(r(3)-r(1)) / sqrt((r(3)-r(1))^2 + (r(4)-r(2))^2)^3 ...
    -G*m(3)*(r(3)-r(5)) / sqrt((r(3)-r(5))^2 + (r(4)-r(6))^2)^3);...
    ... EoM of position in y of object 2:
    (-G*m(1)*(r(4)-r(2)) / sqrt((r(3)-r(1))^2 + (r(4)-r(2))^2)^3 ...
    -G*m(3)*(r(4)-r(6)) / sqrt((r(3)-r(5))^2 + (r(4)-r(6))^2)^3);...
    ... EoM of position in x of object 3:
    (-G*m(1)*(r(5)-r(1)) / sqrt((r(5)-r(1))^2 + (r(6)-r(2))^2)^3 ...
    -G*m(2)*(r(5)-r(3)) / sqrt((r(5)-r(3))^2 + (r(6)-r(4))^2)^3);...
    ... EoM of position in y of object 3:
    (-G*m(1)*(r(6)-r(2)) / sqrt((r(5)-r(1))^2 + (r(6)-r(2))^2)^3 ...
    -G*m(2)*(r(6)-r(4)) / sqrt((r(5)-r(3))^2 + (r(6)-r(4))^2)^3)];
end