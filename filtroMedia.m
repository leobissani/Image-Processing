function final = filtroMedia(arquivo)

    imagem = imread(arquivo);
    imagemTemp = imnoise(imagem,'salt & pepper',0.02);
    imagemRuidosa = imnoise(imagemTemp,'gaussian',0.02);
    imagemRuidosa2 = imagemRuidosa;
    imagemRuidosa3 = imagemRuidosa;
    
    [H,W] = size(imagemRuidosa); 
    final = imagemRuidosa;
    final2 = imagemRuidosa;
    final3 = imagemRuidosa;
    
    % Filtro da Media para Janela 3x3
    for i=2:H-1
        for j=2:W-1
           temp = (imagemRuidosa(i-1,j-1)/9) + (imagemRuidosa(i-1,j)/9) + (imagemRuidosa(i-1,j+1)/9) + 
                  (imagemRuidosa(i,j-1)/9) + (imagemRuidosa(i,j)/9) + (imagemRuidosa(i,j+1)/9) + 
                  (imagemRuidosa(i+1,j-1)/9) + (imagemRuidosa(i+1,j)/9) + (imagemRuidosa(i+1,j+1)/9);
           final(i,j) = temp;
        end
    end
    
    % Filtro da Media para Janela 5x5
    for i=3:H-2
        for j=3:W-2
           temp = (imagemRuidosa2(i-2,j-2)/25) + (imagemRuidosa2(i-2,j-1)/25) + (imagemRuidosa2(i-2,j)/25) + (imagemRuidosa2(i-2,j+1)/25) + (imagemRuidosa2(i-2,j+2)/25) + (imagemRuidosa2(i-1,j-2)/25) + (imagemRuidosa2(i-1,j-1)/25) + (imagemRuidosa2(i-1,j)/25) + (imagemRuidosa2(i-1,j+1)/25) + (imagemRuidosa2(i-1,j+2)/25) + (imagemRuidosa2(i,j-2)/25) + (imagemRuidosa2(i,j-1)/25) + (imagemRuidosa2(i,j)/25) + (imagemRuidosa2(i,j+1)/25) + (imagemRuidosa2(i,j+2)/25) + (imagemRuidosa2(i+1,j-2)/25) + (imagemRuidosa2(i+1,j-1)/25) + (imagemRuidosa2(i+1,j)/25) + (imagemRuidosa2(i+1,j+1)/25) + (imagemRuidosa2(i+1,j+2)/25) + (imagemRuidosa2(i+2,j-2)/25) + (imagemRuidosa2(i+2,j-1)/25) + (imagemRuidosa2(i+2,j)/25) + (imagemRuidosa2(i+2,j+1)/25) + (imagemRuidosa2(i+2,j+2)/25);
           final2(i,j) = temp;
        end
    end
    
    % Filtro da Media para Janela 7x7
    for i=4:H-3
        for j=4:W-3
           temp = (imagemRuidosa3(i-3,j-3)/49) + (imagemRuidosa3(i-3,j-2)/49) + (imagemRuidosa3(i-3,j-1)/49) + (imagemRuidosa3(i-3,j)/49) + (imagemRuidosa3(i-3,j+1)/49) + (imagemRuidosa3(i-3,j+2)/49) + (imagemRuidosa3(i-3,j+3)/49) + (imagemRuidosa3(i-2,j-3)/49) + (imagemRuidosa3(i-2,j-2)/49) + (imagemRuidosa3(i-2,j-1)/49) + (imagemRuidosa3(i-2,j)/49) + (imagemRuidosa3(i-2,j+1)/49) + (imagemRuidosa3(i-2,j+2)/49) + (imagemRuidosa3(i-2,j+3)/49) + (imagemRuidosa3(i-1,j-3)/49) + (imagemRuidosa3(i-1,j-2)/49) + (imagemRuidosa3(i-1,j-1)/49) + (imagemRuidosa3(i-1,j)/49) + (imagemRuidosa3(i-1,j+1)/49) + (imagemRuidosa3(i-1,j+2)/49) + (imagemRuidosa3(i-1,j+3)/49) + (imagemRuidosa3(i,j-3)/49) + (imagemRuidosa3(i,j-2)/49) + (imagemRuidosa3(i,j-1)/49) + (imagemRuidosa3(i,j)/49) + (imagemRuidosa3(i,j+1)/49) + (imagemRuidosa3(i,j+2)/49) + (imagemRuidosa3(i,j+3)/49) + (imagemRuidosa3(i+1,j-3)/49) + (imagemRuidosa3(i+1,j-2)/49) + (imagemRuidosa3(i+1,j-1)/49) + (imagemRuidosa3(i+1,j)/49) + (imagemRuidosa3(i+1,j+1)/49) + (imagemRuidosa3(i+1,j+2)/49) + (imagemRuidosa3(i+1,j+3)/49) + (imagemRuidosa3(i+2,j-3)/49) + (imagemRuidosa3(i+2,j-2)/49) + (imagemRuidosa3(i+2,j-1)/49) + (imagemRuidosa3(i+2,j)/49) + (imagemRuidosa3(i+2,j+1)/49) + (imagemRuidosa3(i+2,j+2)/49) + (imagemRuidosa3(i+2,j+3)/49) + (imagemRuidosa3(i+3,j-3)/49) + (imagemRuidosa3(i+3,j-2)/49) + (imagemRuidosa3(i+3,j-1)/49) + (imagemRuidosa3(i+3,j)/49) + (imagemRuidosa3(i+3,j+1)/49) + (imagemRuidosa3(i+3,j+2)/49) + (imagemRuidosa3(i+3,j+3)/49);          
           final3(i,j) = temp;
        end
    end
        
end

