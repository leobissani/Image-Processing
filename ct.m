function Low_High = ct(arquivo)

    I = imread(arquivo);
    Low_High = stretchlim(I);

end

