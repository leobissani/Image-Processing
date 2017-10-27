function rotacaoBilinear(arquivo, n)
    
    imagem=imread(arquivo);
    [H, W, d]=size(imagem);
    imagem2 = zeros(H,W,d);
    imagem2 = uint8(imagem2);
    
    % Rotação de n graus, cálculo de theta
    theta = (3.1415 / 180) * n;
    centerX = 195;
    centerY = 259;
    
    for i = 1 : W
        for j = 1 : H
            % De screen system para center system
            % Center coordinate System
            cx = i - centerX; cy = centerY - j;
            % Rotacionando
            nx = cx*cos(theta)-cy*sin(theta); ny = cx*sin(theta)+cy*cos(theta);
            % Retornando ao sistema antigo
            cx = nx+centerX; cy = centerY-ny;
            % Localiza as coordenadas dos vizinhos
            Pox = floor(cx); Poy = floor(cy);
            xn = cx-floor(cx); yn = cy-floor(cy);
            if (cx > 1)
                if (cy > 1)
                    if (cx < W)
                        if (cy < H)
                            % Bilinear
                            imagem2(j,i,1) = ceil(imagem(Poy,Pox,1)*(1-xn)*(1-yn)+...
                            imagem(Poy,Pox+1,1)*xn*(1-yn)+imagem(Poy+1,Pox,1)*(1- xn)*yn+...
                            imagem(Poy+1,Pox+1,1)*xn*yn);
                            imagem2(j,i,2) = ceil(imagem(Poy,Pox,2)*(1-xn)*(1-yn)+...
                            imagem(Poy,Pox+1,2)*xn*(1-yn)+imagem(Poy+1,Pox,2)*(1-xn)*yn+...
                            imagem(Poy+1,Pox+1,2)*xn*yn);
                            imagem2(j,i,3) = ceil(imagem(Poy,Pox,3)*(1-xn)*(1-yn)+imagem...
                            (Poy,Pox+1,3)*xn*(1-yn)+imagem(Poy+1,Pox,3)*(1-xn)*yn+...
                            imagem(Poy+1,Pox+1,3)*xn*yn);
                        end
                    end
                end
            end
        end
    end
    
    figure(1);
    imshow(imagem);
    figure(2);
    imshow(imagem2);

end

