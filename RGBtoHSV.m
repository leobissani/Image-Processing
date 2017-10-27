function V = RGBtoHSV(arquivo)

    imagem = imread(arquivo);
    R = imagem(:,:,1);
    G = imagem(:,:,2);
    B = imagem(:,:,3);
    
    imagem = rgb2hsv(imagem);
    H = imagem(:,:,1);
    S = imagem(:,:,2);
    V = imagem(:,:,3);
    
    imshow(imagem);
    
end

