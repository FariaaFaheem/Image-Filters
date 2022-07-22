A=imread('pepper.png');
B=rgb2gray(A);
filter = input('Which filter you want? Type 0 for normal blur. Type 1 for gaussian blur: ');
if (filter == 0)
    f = ones(3,3);
    s = 9;
elseif (filter == 1)
     f = [1 2 1;
          2 4 4;
          1 2 1] ; 
     s = 16;
end
C=double(B);
figure,imshow(B); title('Before Filter')

for i=1:size(C,1)-2
    for j=1:size(C,2)-2
        B(i,j)= (f(1,1)*C(i+2,j)+f(1,2)*C(i+2,j+1)+f(1,3)*C(i+2,j+2)+f(2,1)*C(i+1,j)+f(2,2)*C(i+1,j+1)+f(2,3)*C(i+1,j+2)+f(3,1)*C(i,j)+f(3,2)*C(i,j+1)+f(3,3)*C(i,j+2))/s;
    end
end
figure,imshow(B); title('After Filter')

