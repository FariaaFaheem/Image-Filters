img3d = imread('pepper.png');
grey_img = rgb2gray(img3d);

[mi , ni] = size(grey_img);
img = grey_img(:);

k = fspecial('average', [3 3]);
[mk , nk] = size(k);
kernel = k(:);

filtered_image = comp_filter(img, kernel, ni, mi, mk, nk);