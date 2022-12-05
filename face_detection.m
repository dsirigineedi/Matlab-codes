clc
clear all;
close all;
%To detect Face
FDetect = vision.CascadeObjectDetector;
%Read the input Image
I = Taking_Snapshot();
BB=step(FDetect,I);
figure,imshow(I);

counter=1;
for i = 1:size(BB,1)
           rectangle('Position',BB(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','b');
           face=imcrop(I,BB(i,:));
           fac=imresize(face,[240,320]);
           title('Face Detection');
            savenam = strcat('C:\Users\HP\Documents\MATLAB\Attendance\TestDatabase\' ,num2str(counter), '.jpg'); %this is where and what your image will be saved
        baseDir  = ('C:\Users\HP\Documents\MATLAB\Attendance\TestDatabase\');
        newName  = [baseDir num2str(counter) '.jpg'];
        while exist(newName,'file')
            counter = counter + 1;
            newName = [baseDir num2str(counter) '.jpg'];
        end
        imwrite(fac,newName);
           
         figure,imshow(fac);

end

Record_attendance() % Perform face recognition and record attendance

delete_test() % Delete the images aquired to perform face recognition