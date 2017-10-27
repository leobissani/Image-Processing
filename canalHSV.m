function canalHSV(arquivo)

    imagem = imread(arquivo);

    HSV = rgb2hsv(imagem);
    H = HSV(:,:,1);
    S = HSV(:,:,2);
    V = HSV(:,:,3);   
    
    figure(1), imshow(H), title('Canal H');
    figure(2), imshow(S), title('Canal S');
    figure(3), imshow(V), title('Canal V');

end

