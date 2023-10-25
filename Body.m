classdef Body < handle % handle makes it so that my updateVelocity function can update objects of this class

    properties
        m % mass, kg
        p % position vector <x, y, z>
        v % velocity vector <x, y, z>
        f % force on body <x, y, z>
        xCoordinates % array of x coordinates through time
        yCoordinates % array of y coordinates through time
        zCoordinates % array of z coordinates through time
        c % color on plot
    end

    methods
        function obj = Body(mass, position, velocity, color)
            % Constructor
            %   Detailed explanation goes here
            obj.m = mass;
            obj.p = position;
            obj.v = velocity;
            obj.c = color;
        end

        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.m + inputArg;
        end

    end
end