function stretching2(arquivo)

    imagem = imread(arquivo);
    imagem = rgb2gray(imagem);
    pixel = [];
    [H, W] = size(imagem);
    a = min(imagem);
    b = max(imagem);
    R = b - a;
    
    for i = 1:H
        for j = 1:W
            A = imagem(i,j) - a;
            S = A ./ R;
            pixelTemp = S * 155;
        end
        pixel = [pixelTemp; pixel];
    end

    display(pixel);
    imshow(pixel);
    
end

