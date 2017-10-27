function RGBtoHSV3(arquivo)

    imagem = imread(arquivo);
    R = imagem(:,:,1);
    G = imagem(:,:,2);
    B = imagem(:,:,3);

    MAX3=max(R,G);
    MAX3=max(MAX3,B);
    MIN3=min(G,B);
    MIN3=min(MIN3,R);

    val = MAX3;
    sat = (MAX3 - MIN3)./MAX3;

    a=isequal(MAX3,R);
    if (a == 1)
    hue = 0 + 43*(G - B)./(MAX3 - MIN3);
    end

    b=isequal(MAX3,G);
    if (b == 1)
    hue = 85 + 43*(B - R)./(MAX3 - MIN3);
    end

    c=isequal(MAX3,G);
    if (c == 1)
    hue = 171 + 43*(R - G)./(MAX3 - MIN3);
    end 

    imagemFinal = cat(2,hue,sat,val);

end

