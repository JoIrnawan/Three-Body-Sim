function [x,y] = center_of_mass_p(m,r)

% center_of_mass_p evaluates the center of mass of a system of particles
% given the masses and positions of each objects/particles.

% center_of_mass_p accepts inputs:
% m = [m_1 m_2 ...] = masses of particles
% r = [x_1 y_1; x_2 y_2; ...] = positions of particles

if length(m) ~= length(r(:,1))
    fprintf('Not enough input arguements')
    x = 0;
    y = 0;
else
    M = sum(m);
    x = 0;
    y = 0;
    for l = 1:length(m)
        x = x + m(l)*r(l,1);
        y = y + m(l)*r(l,2);
    end
    x = x/M;
    y = y/M;
end
end