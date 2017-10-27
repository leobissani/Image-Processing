function RGBtoYCbCr(arquivo)

    imagem = imread(arquivo);
    A = [65.481 -37.797 112; ...
     128.553 -74.203 -93.786; ...
     24.966 112 -18.214];

    %# Converte a imagem pra double
    %# reshape pra uma matriz Nx3, e multiplica por A
    imagemYCbCr = reshape(double(imagem)./255,[],3)*A;

    %# Calculo da Formula
    imagemYCbCr(:,1) = imagemYCbCr(:,1)+16;
    imagemYCbCr(:,2) = imagemYCbCr(:,2)+128;
    imagemYCbCr(:,3) = imagemYCbCr(:,3)+128;

    %# Converte pra uint8 e reshape pro tamanho original
    imagemYCbCr = reshape(uint8(imagemYCbCr),size(imagem));

    imshow(imagemYCbCr);


end


