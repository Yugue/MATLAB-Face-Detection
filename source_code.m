clear all, clc

faced = vision.CascadeObjectDetector;

read1 = imread('harrypotter1.jpg');

BB1 = step(faced,read1)    % BB is [x, y, width, height],, x, y from left upper corner of the picture
                        % and x, y is the left-upper corner of the picture
figure,
imshow(read1);
hold on
for i = 1:size(BB1, 1)
        rectangle('Position',BB1(i, :),'LineWidth',5,'Linestyle','-','Edgecolor',...
            'y');
end
title('Face Detection')
hold off
 
read2 = imread('harrypotter2.jpg');
BB2 = step(faced, read2)
figure,
imshow(read2);
hold on
for i = 1:size(BB2, 1)
        rectangle('Position',BB2(i, :),'LineWidth',5,'Linestyle','-','Edgecolor',...
            'y');
end
title('Face Detection')
hold off

distance = sqrt((BB1(1)-BB2(1))^2+(BB1(2)-BB2(2))^2)