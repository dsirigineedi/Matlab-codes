for ind=1:3
        vid = videoinput('winvideo',1);
  set(vid,'ReturnedColorSpace', 'RGB');
    vidRes = get(vid, 'VideoResolution');
    nBands = get(vid, 'NumberOfBands');
    hImage = image( zeros(vidRes(2), vidRes(1), nBands) );
    preview(vid,hImage);
    img = getsnapshot(vid);
    imshow(img);
    FDetect=vision.CascadeObjectDetector('FrontalFaceCART');
    BB=step(FDetect,img);
    imshow(img);
   
    for i=1:size(BB,1)
        rectangle('position',BB(i,:),'Linewidth',5,'Linestyle','-','Edgecolor','r');
    end
   
    N=size(BB,1);
    counter=1;
    for i=1:N
        face=imcrop(img,BB(i,:));
        TrainDatabasePath='C:\Users\HP\Documents\MATLAB\Attendance\TrainDatabase\';
        savenam = strcat( TrainDatabasePath,num2str(counter), '.jpg'); %this is where and what your image will be saved
        baseDir  = TrainDatabasePath;
        newName  = [baseDir num2str(counter) '.jpg'];
        while exist(newName,'file')
            counter = counter + 1;
            newName = [baseDir num2str(counter) '.jpg'];
        end
        fac=imresize(face,[240,320]);
        imwrite(fac,newName);
        imshow(face);
        pause(2);
    end
    delete(vid);
end