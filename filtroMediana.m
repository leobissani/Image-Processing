function filtroMediana(nomeArquivo)

    I = imread(nomeArquivo);
    Z = imnoise(I,'salt & pepper',0.02);
    W = imnoise(Z,'gaussian',0.02);
    
    imshow(W);
    
    a = double(W);
    b = a;
    [H,W] = size(a);
    
    for x = 2:1:H-1
        for y = 2:1:W-1
            a1 = [a(x-1,y-1),a(x-1,y),a(x-1,y+1),a(x,y-1),a(x,y),
                a(x,y+1),a(x+1,y-1),a(x+1,y),a(x+1,y+1)];
            a2 = sort(a1);
            med = a2(5); % o quinto valor é o valor da mediana
            b(x,y) = med;
        end
    end
    
end

