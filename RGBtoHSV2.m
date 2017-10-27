function RGBtoHSV2(arquivo)

    % Lendo as matrizes R,G,B
    imagem = imread(arquivo);
    R = imagem(:,:,1);
    R = double(R);
    Rn = R/255;
    H = zeros(size(Rn));
    G = imagem(:,:,2);
    G = double(G);
    Gn = G/255;
    B = imagem(:,:,3);
    B = double(B);
    Bn = G/255;
    
    CmaxTemp = max(Rn,Gn);
    Cmax = max(CmaxTemp,Bn);

    CminTemp = min(Rn,Gn);
    Cmin = min(CminTemp,Bn);
    
    delta = Cmax - Cmin;
    
    % Calculo do H
    if Cmax == Rn & Gn >= Bn
        H = 60 * ((Gn - Bn)/(Cmax - Cmin)) + 0;
    elseif Cmax == Rn & Gn < Bn
        H = 60 * ((Gn - Bn)/(Cmax - Cmin)) + 360;
    elseif Cmax == Gn
        H = 60 * ((Bn - Rn)/(Cmax - Cmin)) + 120;
    elseif Cmax == Bn
        H = 60 * ((Rn - Gn)/(Cmax - Cmin)) + 240;
    end
    
    % Calculo do S
    S = (Cmax - Cmin) / Cmax;
    
    % Calculo do V
    V = Cmax;

end

