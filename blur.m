img = imread('pepper.png');

grey_img = rgb2gray(img);

filtered_image = zeros(size(grey_img));

kernel = (1/9) .* ones(3,3);

figure
imshow(grey_img); 
title('Before Applying Filter');

for i=1:size(grey_img, 1)-2
    for j=1:size(gray_img, 2)-2
        sum = 0;
        for k=1:3
            for l=1:3
                sum = sum + kernel(k,l) * grey_img(i+k-1, j+l-1);
            end
        end
        filtered_image(i+1,j+1) = sum;
    end
end

figure
imshow(filtered_image); 
title('After Applying Filter');

