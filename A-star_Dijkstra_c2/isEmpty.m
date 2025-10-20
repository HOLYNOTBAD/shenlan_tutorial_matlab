function bool = isEmpty(OPEN,OPEN_COUNT)
    for i =  1:OPEN_COUNT
        if OPEN(i,1) == 1
            bool = false;
            return;
        end
    end
    bool = true;
end

