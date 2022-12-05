function [images] = readFiles()
    cd 'C:\Users\HP\Documents\MATLAB\Attendance\TrainDatabase\'
    imagefiles = dir('C:\Users\HP\Documents\MATLAB\Attendance\TrainDatabase\.jpg');         
    nfiles = length(imagefiles);    
    for ii=1:nfiles
        currentfilename = imagefiles(ii).name;
        currentimage = rgb2gray(imread(currentfilename));
        currentimage  = imresize(double(currentimage),[500 500]);
        [m,n] = size(currentimage);
        images{ii} = reshape(currentimage,[m*n,1]);
    end
end
