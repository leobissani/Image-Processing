function unsharpMasking(arquivo)

    imagem = imread(arquivo);
    unsharped = imsharpen(imagem);
    
    imshow(unsharped);

end

