Vin = 5;
R2 = 47000.0;
flatResistance = 25000.0;
bendResistance = 125000.0;

%% find the minimum and maximuum Vout
V_0 =Vin * flatResistance/(flatResistance + R2);
V_90= Vin * bendResistance/(bendResistance + R2);
%%fprintf(V_0);
%%fprintf(V_90);

%%interpolate all the voltage
angles_ref = 0:90;
V_ref= interp1([0,90], [V_0, V_90], angles_ref);
disp(V_ref)

plot(V_ref,angles_ref,'LineWidth',2); hold on
grid on
ylabel('Angles (°)')
xlabel('Voltage (V)')
D1 = readtable('/Users/coolbear/Desktop/total_flexsensor_value (5).xlsx','Range','A1:J70'); %Read the first 70 sets of data of the test data 0-90 degrees as the data for training the neural network
D2 = readtable('/Users/coolbear/Desktop/total_flexsensor_value (5).xlsx','Range','A71:J100');%Read the last 30 sets of data from 0-90 degrees of the test data as the data for testing and verifying the neural network
Matrice1=table2array(D1);

N_train=70; 
angles_measured= 0:10:90;%Set the angle measurement interval


angles_target_aux = angles_measured + zeros(N_train,length(angles_measured));%fill row vector angles as matrix vector
V_Measured = reshape(Matrice1,1,700);Convert %Matrix Vector Measurement Data to Row Vectors
angles_target= angles_target_aux(:);
angles_target= angles_target';

simplefit_dataset=[V_Measured;angles_target]; %input value= V_Measured, output value=angles_target

net = fitnet(15); %Construct a function fitting neural network with one hidden layer of size 15.
net= train(net,V_Measured,angles_target);

Matrice2 = table2array(D2);%Extract matrix data in D2
V_Measured_test = reshape(Matrice2,1,300); %Row vector becomes matrix vector
angle=round(net(V_Measured_test));%Input the test voltage into the tested neural network, get the angle output, and calculate its rounded result
scatter(V_Measured_test,angle,'*'); hold on %Output the test results as a scatterplot
