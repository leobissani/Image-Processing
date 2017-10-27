function H = aplicaRuidos(nomeArquivo)

    I = imread(nomeArquivo);
    J = imnoise(I,'salt & pepper',0.02);
    H = imnoise(J,'gaussian',0.10);
    figure, imshow(I)
    figure, imshow(H)
    
end
