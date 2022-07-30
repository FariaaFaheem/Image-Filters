function filtered_image = comp_filter(img, kernel, ni, mi, mk, nk)

grey_img = reshape(img,mi,ni);
kernel = reshape(kernel,mk,nk);

filtered_image = zeros(size(grey_img), 'uint8');

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

end