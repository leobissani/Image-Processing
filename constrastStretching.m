function newPixel = constrastStretching(arquivo, newMax, newMin)

    imagem = imread(arquivo);
    imagemR = double(imagem);
    imagemR = imagemR/255;
    
    [H, W] = size(imagem);
    
    limites = stretchlim(imagem);
    vMin = limites(1);
    vMax = limites(2);
    
    figure(1), imshow(imagem);
     
    for i = 1:H
        for j = 1:W
            newPixel(i,j) = ((imagemR(i,j) - vMin) * ((newMax - newMin)/vMax - vMin)) + newMin;
            newPixel(i,j) = round(newPixel(i,j));
        end
    end
    
    newPixel = uint8(newPixel);
    figure(2), imshow(newPixel);

end

