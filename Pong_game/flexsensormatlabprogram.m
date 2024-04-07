Vin = 5;
R2 = 47000.0;
flatResistance = 25000.00;
bendResistance = 125000.0;

%% find the minimum and maximuum Vout
V_0 =Vin * flatResistance/(flatResistance + R2);
V_90= Vin * bendResistance/(bendResistance + R2);

%%fprintf(V_0);
%%fprintf(V_90);

%%interpolate all the voltage
angles_ref = 0:90;
V_ref= interp1([0,90], [V_0, V_90], angles_ref);

plot(V_ref,angles_ref,'LineWidth',2); hold on
grid on
ylabel('Angles (°)')
xlabel('Voltage (V)')

N_train=50;
angles_measured= 0:5:90;
V_Measured_aux = V_ref(angles_measured+1) + 0.01*randn(N_train,length(angles_measured));
angles_target_aux = angles_measured + zeros(N_train,length(angles_measured));
V_Measured = V_Measured_aux(:);
V_Measured = V_Measured';
angles_target= angles_target_aux(:);
angles_target= angles_target';


net = fitnet(15);
net= train(net,V_Measured,angles_target);

N_test=10;
angles_measured_test = 18;
V_Measured_test = V_ref(angles_measured_test+1)+0.01*randn(N_test,1);
disp(V_Measured_test)
for i = 1:N_test
    angle = round(net(V_Measured_test(i)));
    disp(['The angle after calibration is' ,num2str(angle),'°']);
        angle_1(i)=angle;
end

angles_measured_test_1=angles_measured_test*ones(1,N_test);
%scatter(V_Measured_test,angles_mmeasured_test_1,'°'); hold on
scatter(V_Measured_test,angle_1,'^'); hold on
grid on

% DonnesExcel = readtable("0_degree.csv","Range","A1:A200");
% Matrice = table2array(DonnesExcel);
% Vecteur = reshape(Matrice,1,[]);
% %disp(Vecteur)