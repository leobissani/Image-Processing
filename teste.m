function H = teste()

    matriz1 = [1,2,3;2,3,4];
    matriz2 = [2,2,3;1,2,4];
    
    [H,W] = size(matriz1);
    
    for i = 1:H
        for j = 1:W
            if isequal(matriz2(i,j),matriz1(i,j))
                H(i,j) = 10 * 30;
            end
        end
    end
       
end

