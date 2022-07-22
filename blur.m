clc;

clear;

img = imread('test_rgb.png');

grey_img = rgb2gray(img);

filtered_image = zeros(size(grey_img), 'uint8');

% STANDARD KERNELS

% Note: Kernel can be any 3x3 matrix

% Average Blur Filter
%kernel = fspecial('average', [3 3]); % OR kernel = (1/9)*ones(3,3);

% Gaussian Blur Filter
kernel = fspecial('gaussian', [3 3], 5);

% Sharpening Filter
%kernel = [ 0, -1, 0; -1, 1.5, -1; 0, -1, 0];

for i=1:size(grey_img, 1)-2
    for j=1:size(grey_img, 2)-2
        sum = 0;
        for k=1:3
            for l=1:3
                product = kernel(k, l) * grey_img(i+k-1, j+l-1);
                sum = sum + product;
            end
        end
        filtered_image(i+1, j+1) = sum;
    end
end

figure
imshow(grey_img); 
title('Before Applying Filter');

figure
imshow(filtered_image); 
title('After Applying Filter');

