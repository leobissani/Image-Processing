function zoomImagem(arquivo, fator)

    imagemTemp = imread(arquivo);
    imagem = cast(imagemTemp, 'int16');
    imshow(cast(imagem, 'uint8'));
    [H, W, d] = size(imagem);
    
    for i = 1:H
        for j = 1:W
            imagem1(1 + (i - 1) * fator, 1 + ...
                (j - 1) * fator,:) = imagem(i,j,:);
        end
%         imshow(cast(imagem1, 'uint8'));
    end
    
    % Interpolacao Bilinear
    for i = 1:1 + (H - 2) * fator
        for j = 1:1 + (W - 2) * fator
           if((rem(i-1, fator) == 0) && (rem(j - 1, fator) == 0)) 
           else  
               h00 = imagem1(ceil(i/fator)*fator-fator+1,...
               ceil(j/fator)*fator-fator+1,:); 
               h10 = imagem1(ceil(i/fator)*fator-fator+1+fator,...
               ceil(j/fator)*fator-fator+1,:);
               h01 = imagem1(ceil(i/fator)*fator-fator+1,...
               ceil(j/fator)*fator-fator+1+fator,:);
               h11 = imagem1(ceil(i/fator)*fator-fator+1+fator,...
               ceil(j/fator)*fator-fator+1+fator,:);

               % Coordenadas do pixel calculado
               x = rem(i-1, fator);
               y = rem(j-1, fator);  

               % Localizando o pixel que está sendo calculado
               % através do vizinho mais próximo (nearest neighbor)
               dx = x/fator; 
               dy = y/fator;

               % Constantes da Interpolacao
               b1 = h00;
               b2 = h10-h00;
               b3 = h01-h00;
               b4 = h00-h10-h01+h11;           
               
               % Equacao da Interpolacao.
               imagem1(i,j,:) = b1 + b2*dx + b3*dy + b4*dx*dy; 
           end
        end
%       imshow(cast(imagem1,'uint8'));
    end

    imshow(cast(imagem1,'uint8'));
    imwrite(cast(imagem1,'uint8'), 'imagemZoom.jpg');

end

