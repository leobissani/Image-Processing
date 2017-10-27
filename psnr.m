function psnr = psnr(arquivo1, arquivo2)
    
    imagem1 = imread(arquivo1);
    imagem2 = imread(arquivo2);

    N = size(imagem1);
    x = im2double(imagem1);
    y = im2double(imagem2);
    acc = 0;

    for k1 = 1:N(1)
        for k2 = 1:N(2)
            acc = acc + (x(k1,k2) - y(k1,k2)) ^ 2;
        end
    end
    
    mse = acc/(N(1)*N(2));
    psnr = 10*log10((255^2)/mse); 

end

