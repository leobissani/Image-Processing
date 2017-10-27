function unsharpedMasking(arquivo)

    imagem = imread(arquivo);
    [H,W] = size(imagem); 
    final = imagem;
    
    % Filtro do Unsharped Masking para Janela 3x3
    for i=2:H-1
        for j=2:W-1
           temp = (imagem(i-1,j)/-1) + (imagem(i,j-1)/-1) + (imagem(i,j)/4) + (imagem(i,j+1)/-1) + (imagem(i+1,j)/-1);
           final(i,j) = temp;
        end
    end
    
    figure(1), imshow(final);

end

