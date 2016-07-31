I = imread('blobs.png');
se1 = strel('diamond', 1);
se2 = strel('disk', 1);
se3 = strel('diamond', 2);
se4 = strel('disk', 2);
se5 = strel('diamond', 4);

I2 = imtophat(I, se1);
I3 = imtophat(I, se2);
I4 = imtophat(I, se3);
I5 = imtophat(I, se4);
I6 = imtophat(I, se5);

subplot(2, 3, 1);
    imshow(I);
    title('Original Image');
subplot(2, 3, 2);
    imshow(I2);
    title('3x3 diamond');
subplot(2, 3, 3);
    imshow(I3);
    title('3x3 disk');
subplot(2, 3, 4);
    imshow(I4);
    title('5x5 diamond');
subplot(2, 3, 5);
    imshow(I5);
    title('5x5 disk');
subplot(2, 3, 6);
    imshow(I6);
    title('9x9 diamond');