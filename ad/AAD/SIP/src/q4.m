I = imread('lena.tiff');
h = fspecial('gaussian', size(I), 2);
res = LSI(I, h);
subplot(1, 2, 1);
    imagesc(I);
    colormap gray;
    title('Original image');
    axis image; axis off;
subplot(1, 2, 2);
    imshow(res, [min(min(res)) max(max(res))]);
    colormap gray;
    title('Image after convolution and added noise');
    axis image;axis off;