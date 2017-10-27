function equalizacaoHistograma(arquivo)

    imagem = imread(arquivo);
    R = size(imagem,1);
    C = size(imagem,2);
    
    ah = uint8(zeros(size(R,C)));
    n = R * C;
    freq = zeros(256,1);
    pdf = zeros(256,1);
    cdf = zeros(256,1);
    cum = zeros(256,1);
    sum = 0;
    L = 255;
    out = zeros(256,1);
    
    for i = 1:R
        for j = 1:C
            valor = imagem(i,j);
            freq(valor + 1) = freq(valor + 1) +1;
            pdf(valor + 1) = freq(valor + 1)/n;
        end
    end
    
    for i = 1:size(pdf)
        sum = sum + freq(i);
        cum(i) = sum;
        cdf(i) = cum(i)/n;
        out(i) = round(cdf(i) * L);
    end
    
    for i = 1:R
        for j = 1:C
            ah(i,j) = out(imagem(i,j)+1);
        end
    end
    
    imshow(ah);


end

