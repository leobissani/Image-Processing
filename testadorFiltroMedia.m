function testadorFiltroMedia(nomeArquivo)

    % load an image
    img = imread(nomeArquivo);

    % add some noise
    img_noisy = imnoise(img, 'salt & pepper', 0.02);
    img_noisy = imnoise(img_noisy, 'gaussian', 0.02);
    figure; imshow(img_noisy);

    % apply medfilt2 on each color
    img_filtered = img_noisy;
    for c = 1 : 3
        img_filtered(:, :, c) = medfilt2(img_noisy(:, :, c), [3, 3]);
    end
    figure; imshow(img_filtered);

end