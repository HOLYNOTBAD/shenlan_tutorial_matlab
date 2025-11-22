 function map = obstacle_map(xStart,yStart,xTarget,yTarget,MAX_X,MAX_Y)
%This function returns a map contains random distribution obstacles.
    % 创建一个MAX_X行MAX_Y列的二维数组，元素值在0到1之间随机分布
    rand_map = rand(MAX_X,MAX_Y);
    % 地图的稀疏表示：储存起点、所有障碍物、以及终点的坐标
    map = [];
    map(1,1) = xStart;
    map(1,2) = yStart;
    k=2;
    % 障碍物密度
    obstacle_ratio = 0.10;
    for i = 1:1:MAX_X
        for j = 1:1:MAX_Y
            % 如果随机数的值小于障碍物密度，且该点不是起点、终点，则将该点设为障碍物
            if( (rand_map(i,j) < obstacle_ratio) && (i~= xStart || j~=yStart) && (i~= xTarget || j~=yTarget))
                map(k,1) = i;
                map(k,2) = j;
                k=k+1;
            end    
        end
    end
    map(k,1) = xTarget;
    map(k,2) = yTarget;
end

