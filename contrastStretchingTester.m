function contrastStretchingTester(arquivo)

    imagem = imread(arquivo);
    final = imadjust(imagem, stretchlim(imagem),[0.40 0.19]);
    figure(1), imshow(imagem);
    figure(2), imshow(final);

end

