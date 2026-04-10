% ANFIS Student Performance Prediction

% Dataset: [Attendance Assignment Test Performance]
data = [
80 75 70 85;
60 65 60 65;
40 50 45 50;
90 85 88 90;
30 40 35 40;
70 60 65 70;
50 55 60 60;
85 80 82 88
];

% Generate FIS
fis = genfis1(data,3);

% Train ANFIS
[trainedFis, error] = anfis(data,fis,10);

% Plot error graph
figure;
plot(error)
xlabel('Epochs')
ylabel('Error')
title('ANFIS Training Error')

% Surface plot
figure;
gensurf(trainedFis)

% Test prediction
output = evalfis(trainedFis,[85 80 75]);
disp(['Predicted Performance: ', num2str(output)])