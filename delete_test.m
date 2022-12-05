function  delete_test()

TestFiles = dir('C:\Users\HP\Documents\MATLAB\Attendance\TestDatabase\');
Test_Number = 0;

for i = 1:size(TestFiles,1)
    if not(strcmp(TestFiles(i).name,'.')|strcmp(TestFiles(i).name,'..')|strcmp(TestFiles(i).name,'Thumbs.db'))
        Test_Number = Test_Number + 1; % Number of all images in the training database
    end
end

for i = 1:Test_Number

    name= strcat('C:\Users\HP\Documents\MATLAB\Attendance\TestDatabase\', num2str(i), '.jpg');
    
    delete(name);
end