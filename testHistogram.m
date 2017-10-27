function testHistogram(arquivo1, arquivo2)

    a=imread(arquivo1);
    agray=rgb2gray(a);
    
    b=imread(arquivo2);
    bgray=rgb2gray(b);
    
    figure,imhist(agray);
    figure,imhist(bgray);

end

