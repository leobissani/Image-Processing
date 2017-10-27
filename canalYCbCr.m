function canalYCbCr(arquivo)

    imagem = imread(arquivo);

    YCbCr = rgb2ycbcr(imagem);

    Y = YCbCr(:,:, 1);
    Cb = YCbCr(:,:, 2);
    Cr = YCbCr(:,:, 3);
    
    figure(1), imshow(Y), title('Canal Y');
    figure(2), imshow(Cb), title('Canal Cb');
    figure(3), imshow(Cr), title('Canal Cr');
    
end

