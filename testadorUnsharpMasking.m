function testadorUnsharpMasking(arquivo)

    imagem = imread(arquivo);
    figure(1), imshow(imagem), title('Imagem Filtrada');
    
    unsharped = imsharpen(imagem);
    figure, imshow(unsharped), title('Sharpened Image');

end

