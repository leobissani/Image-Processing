function HSVtoRGB(arquivo, arquivoV)

    imagemTemp = imread(arquivo);
%     imagem = double(imagemTemp);
    canalV = imread(arquivoV);
    
    HSV = rgb2hsv(imagemTemp);
    H = HSV(:,:,1);
    display(size(H));
    S = HSV(:,:,2);
    display(size(S));
%     V = HSV(:,:,3);
%     display(size(V));
    V = canalV(:,:,3);
    display(size(V));
    
    figure(1), imshow(H);
    figure(2), imshow(S);
    figure(3), imshow(V);
    
    imagemHSV = cat(3,H,S,V);
    figure(4), imshow(imagemHSV);
    
    imagemHSV = double(imagemHSV);    
    imagemRGB = hsv2rgb(imagemHSV);
    figure(5), imshow(imagemRGB);
    
end

