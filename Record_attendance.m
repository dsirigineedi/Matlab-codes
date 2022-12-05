function notout=Record_attendance()
clc
clear all;
close all;
TrainDatabasePath = 'C:\Users\HP\Documents\MATLAB\Attendance\TrainDatabase\';
TestDatabasePath = 'C:\Users\HP\Documents\MATLAB\Attendance\TestDatabase\';
% No. of test images
TrainFiles = dir('C:\Users\HP\Documents\MATLAB\Attendance\TestDatabase\');
Train_Number = 0;

for i = 1:size(TrainFiles,1)
    if not(strcmp(TrainFiles(i).name,'.')|strcmp(TrainFiles(i).name,'..')|strcmp(TrainFiles(i).name,'Thumbs.db'))
        Train_Number = Train_Number + 1; % Number of all images in the training database
    end
end
v=Train_Number;
for j = 1:v
    TestImage  = num2str(j);
    s=strcat('a',TestImage);
    TestImage = strcat(TestDatabasePath,'\',char( TestImage),'.jpg');
    T = CreateDatabase(TrainDatabasePath); % T is the 1D matrix of the traindatabase
    [m, A, Eigenfaces] = EigenfaceCore(T);
    [OutputName,Recognized_index] = Recognition(TestImage, m, A, Eigenfaces);
    SelectedImage = strcat(TrainDatabasePath,'\',  OutputName);
    SelectedImage = imread(SelectedImage);
    imshow(SelectedImage);
    switch Recognized_index
        case 1
           strmsg1 = 'The recognised person is ';
            msg = [strmsg1 'kalyan'];
            msgbox(msg);
            sd=strcat('D',num2str(1));
            se=strcat('E',num2str(1));
             dt = datestr(now,'mmmm dd, yyyy HH:MM');
             xlswrite('att1.xlsx',{dt},'Sheet1',se);         
            xlswrite('att1.xlsx','1','Sheet1',sd);
        case 2
            strmsg1 = 'The recognised person is ';
            msg = [strmsg1 'kalyan'];
            msgbox(msg);
            sd=strcat('D',num2str(1));
            se=strcat('E',num2str(1));
             dt = datestr(now,'mmmm dd, yyyy HH:MM');
             xlswrite('att1.xlsx',{dt},'Sheet1',se);         
            xlswrite('att1.xlsx','1','Sheet1',sd);
           
        case 3
            strmsg1 = 'The recognised person is ';
            msg = [strmsg1 'kalyan'];
            msgbox(msg);
            sd=strcat('D',num2str(1));
            se=strcat('E',num2str(1));
             dt = datestr(now,'mmmm dd, yyyy HH:MM');
             xlswrite('att1.xlsx',{dt},'Sheet1',se);         
            xlswrite('att1.xlsx','1','Sheet1',sd);
       
        case 4
            strmsg1 = 'The recognised person is ';
            msg = [strmsg1 'satish'];
            msgbox(msg);
            
            sd=strcat('D',num2str(2));
             se=strcat('E',num2str(2));
             dt = datestr(now,'mmmm dd, yyyy HH:MM');
             
             xlswrite('att1.xlsx',{dt},'Sheet1',se);         
            xlswrite('att1.xlsx','1','Sheet1',sd);
        
        case 5
            strmsg1 = 'The recognised person is ';
            msg = [strmsg1 'satish'];
            msgbox(msg);
            sd=strcat('D',num2str(2));
             se=strcat('E',num2str(2));
             dt = datestr(now,'mmmm dd, yyyy HH:MM');
             dt=char(dt);
             xlswrite('att1.xlsx',{dt},'Sheet1',se);         
            xlswrite('att1.xlsx','1','Sheet1',sd);
            
        case 6
            strmsg1 = 'The recognised person is ';
            msg = [strmsg1 'satish'];
            msgbox(msg);
            sd=strcat('D',num2str(2));
             se=strcat('E',num2str(2));
             dt = datestr(now,'mmmm dd, yyyy HH:MM');
             dt=char(dt);
             xlswrite('att1.xlsx',{dt},'Sheet1',se);         
            xlswrite('att1.xlsx','1','Sheet1',sd);
            
            case 7
             strmsg1 = 'The recognised person is ';
              msg = [strmsg1 'ganesh'];
              msgbox(msg);
             sd=strcat('D',num2str(3));
           se=strcat('E',num2str(3));
             dt = datestr(now,'mmmm dd, yyyy HH:MM');
             dt=char(dt);
             xlswrite('att1.xlsx',{dt},'Sheet1',se);         
            xlswrite('att1.xlsx','1','Sheet1',sd);
          case 8
              strmsg1 = 'The recognised person is ';
              msg = [strmsg1 'ganesh'];
              msgbox(msg);
              sd=strcat('D',num2str(3));
             se=strcat('E',num2str(3));
             dt = datestr(now,'mmmm dd, yyyy HH:MM');
             dt=char(dt);
             xlswrite('att1.xlsx',{dt},'Sheet1',se);         
           xlswrite('att1.xlsx','1','Sheet1',sd);
           
          case 9
              strmsg1 = 'The recognised person is ';
              msg = [strmsg1 'ganesh'];
              msgbox(msg);
              sd=strcat('D',num2str(3));
             se=strcat('E',num2str(3));
             dt = datestr(now,'mmmm dd, yyyy HH:MM');
             dt=char(dt);
             xlswrite('att1.xlsx',{dt},'Sheet1',se);         
              xlswrite('att1.xlsx','1','Sheet1',sd);
          case 10
             strmsg1 = 'The recognised person is ';
             msg = [strmsg1 'chakri'];
             msgbox(msg)  ;
             sd=strcat('D',num2str(4));
             se=strcat('E',num2str(4));
             dt = datestr(now,'mmmm dd, yyyy HH:MM');
             dt=char(dt);
             xlswrite('att1.xlsx',{dt},'Sheet1',se);         
             xlswrite('att1.xlsx','1','Sheet1',sd);
             
         case 11
            strmsg1 = 'The recognised person is ';
             msg = [strmsg1 'chakri'];
             msgbox(msg);
             sd=strcat('D',num2str(4));
             se=strcat('E',num2str(4));
             dt = datestr(now,'mmmm dd, yyyy HH:MM');
             dt=char(dt);
             xlswrite('att1.xlsx',{dt},'Sheet1',se);         
             xlswrite('att1.xlsx','1','Sheet1',sd);
             
         case 12
             strmsg1 = 'The recognised person is ';
             msg = [strmsg1 'chakri'];
             msgbox(msg);
             sd=strcat('D',num2str(4));
             se=strcat('E',num2str(4));
             dt = datestr(now,'mmmm dd, yyyy HH:MM');
             dt=char(dt);
             xlswrite('att1.xlsx',{dt},'Sheet1',se);         
             xlswrite('att1.xlsx','1','Sheet1',sd);
         
              
         otherwise
             strmsg1 = 'Person not recognised';
             msgbox(strmsg1);
    end
end
notout=1;

