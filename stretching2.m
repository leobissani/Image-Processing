function stretching2(arquivo)

    imagem = imread(arquivo);
    % imagem = rgb2gray(imagem);
    pixel = [];
    [H, W] = size(imagem);
    a = min(imagem);
    b = max(imagem);
    c = min(a);
    d = max(b);
    %B = 255;
    C = d - c;
    D = 155 / C;
    
    for i = 1:H
        for j = 1:W
            A = (imagem(i,j) - c);
            pixelTemp(i,j) = (A * D) + 100;
        end
    end
    
    imshow(pixelTemp);
    
end

