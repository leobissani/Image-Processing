function histograma(arquivo)

    imagem = imread(arquivo);
    b = zeros(1,256);
    [H,W] = size(imagem);

    for x = 1:1:H
       for y = 1:1:W
           if imagem(x,y) < 1
               continue;
           else
                t = imagem(x,y);
           end
           b(t) = b(t) + 1;
       end
    end

    bar(b);
    title('Histograma da Imagem');
    
end

