% Used for Motion Planning for Mobile Robots
% Thanks to HKUST ELEC 5660 
close all; clear all; clc;
addpath('A_star')

% Environment map in 2D space 
xStart = 1.0;
yStart = 1.0;
xTarget = 19.0;
yTarget = 19.0;
MAX_X = 20;
MAX_Y = 20;

% 本例中的map是地图的一种稀疏表示
% map中的元素为一系列障碍物的坐标，map的第一个元素是起点坐标，最后一个元素是终点坐标
map = obstacle_map(xStart, yStart, xTarget, yTarget, MAX_X, MAX_Y);

% Waypoint Generator Using the A* 
[path,OPEN] = A_star_search(map, MAX_X,MAX_Y);

% visualize the 2D grid map
visualize_map(map, path, OPEN);

% save map
% save('Data/map.mat', 'map', 'MAX_X', 'MAX_Y');
