I = imread('westconcordaerial.png');
I2 = imread('westconcordorthophoto.png');
imshow(I);
[x, y] = getpts;
set1 = [x y];
imshow(I2);
[x2, y2] = getpts;
set2 = [x2 y2];
tform = cp2tform(set1, set2, 'nonreflective similarity');
I3 = imtransform(I, tform);
subplot(1, 3, 1);
    imagesc(I);
    axis image;
    colormap gray;
    title('westconcordaerial.png');
subplot(1, 3, 2);
    imagesc(I2);
    axis image;
    colormap gray;
    title('westconcordorthophoto.png');
subplot(1, 3, 3);
    imagesc(I3);
    axis image;
    colormap gray;
    title('Procrustes transformation of westconcordaerial.png');