
inputResume=readtable('inputResume.csv','Delimiter',',');

inputName = inputResume(:,1);

scalarColumn = 2;  % Scalar Variable
sizeColumn = 3;   % Array/Matrix Size

folderDevRes = strcat('inputResumeScalarCSV');
[status, msg, msgID] = mkdir(folderDevRes)

% SCALAR

inputScalarValue = inputResume(:,scalarColumn);
inputScalarValue = [inputName inputScalarValue];

imageFileName = strcat(folderDevRes,'/ScalarVariable.csv');
imageFileName = char(imageFileName);
writetable(inputScalarValue,imageFileName,'WriteVariableNames',0);

% VECTOR OR MATRIX SIZE

inputIndexValue = inputResume(:,sizeColumn);
inputIndexValue = [inputName inputIndexValue];

imageFileName = strcat(folderDevRes,'/ScalarSize.csv');
imageFileName = char(imageFileName);
writetable(inputIndexValue,imageFileName,'WriteVariableNames',0);