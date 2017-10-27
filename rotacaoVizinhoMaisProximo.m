function rotacaoVizinhoMaisProximo(arquivo, n)

    imagem = imread(arquivo);
    [H, W, d] = size(imagem);
    imagem2 = zeros(H, W, d);
    imagem2 = uint8(imagem2);
    
    % Rotação de n graus, cálculo de theta
    theta = (3.1415 / 180) * n;
    centerX = 195;
    centerY = 259;
    
    for i = 1 : H 
        for j = 1 : W
            % De screen system para center system
            % Center coordinate System
            cx = i-centerX;
            cy = centerY-j;
            % Rotacionando
            nx = cx*cos(theta)-cy*sin(theta);
            ny = cx*sin(theta)+cy*cos(theta);
            % Nearest neighbor
            nx = ceil(nx);
            ny = ceil(ny);
            % Retornando ao sistema antigo
            cx = nx+centerX;
            cy = centerY-ny;
            
            if (cx > 0)
                if (cy > 0)
                    if (cx <= W)
                        if (cy <= H)
                            imagem2(j,i,:) = imagem(cy,cx,:);
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

