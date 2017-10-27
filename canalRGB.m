function canalRGB(arquivo)

    imagem = imread(arquivo);
    
    R = imagem(:,:,1);
    G = imagem(:,:,2);
    B = imagem(:,:,3);
    
    A = zeros(size(imagem, 1), size(imagem, 2));
    
    canalVermelho = cat(3, R, A, A);
    canalVerde = cat(3, A, G, A);
    canalAzul = cat(3, A, A, B);
    
    figure(1), imshow(canalVermelho), title('Canal Vermelho');
    figure(2), imshow(canalVerde), title('Canal Verde');
    figure(3), imshow(canalAzul), title('Canal Azul');

end

