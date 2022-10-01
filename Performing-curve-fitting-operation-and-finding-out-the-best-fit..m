% Programmed by Ravi Thakur
clear all
close all
clc

% cp data entry
cp_data = load('data'); % Data file to be detected by matlab
temp = cp_data(:,1);    %X-Variable
cp = cp_data(:,2);      %Y-Variable

% Predicted Curve Fitting
co_eff_predict = polyfit(temp,cp,8);
yfit_predicted = polyval(co_eff_predict,temp);
yresid_p = cp - yfit_predicted;
ssresid_p = sum(yresid_p.^2);
sstotal_p = (length(cp)-1)*var(cp);
rsq_predict = 1- ssresid_p/sstotal_p

% Linear Curve Fitting
co_eff_linear = polyfit(temp,cp,1);
yfit_linear = polyval(co_eff_linear,temp);
yresid_1 = cp - yfit_linear;
ssresid_1 = sum(yresid_1.^2);
sstotal_1 = (length(cp)-1)*var(cp);
rsq_linear = 1- ssresid_1/sstotal_1

% Cubic Curve Fitting
co_eff_cubic = polyfit(temp,cp,3);
yfit_cubic = polyval(co_eff_cubic,temp);
yresid_2 = cp - yfit_cubic;
ssresid_2 = sum(yresid_2.^2);
sstotal_2 = (length(cp)-1)*var(cp);
rsq_cubic = 1- ssresid_2/sstotal_2 

figure(1)
plot(temp,cp,'linewidth',3)
hold on
plot(temp,yfit_predicted,'linewidth',3)
xlabel('Tempreature [K]')
ylabel('Specfic heat [KJ/Kmol-K]')
legend('Observed Value','predicted Value')
grid on

figure(2)
plot(temp,cp,'linewidth',3)
hold on
plot(temp,yfit_linear,'linewidth',3)
xlabel('Tempreature [K]')
ylabel('Specfic heat [KJ/Kmol-K]')
legend('Observed Value','Linear Value')
grid on

figure(3)
plot(temp,cp,'linewidth',3)
hold on
plot(temp,yfit_cubic,'linewidth',3)
xlabel('Tempreature [K]')
ylabel('Specfic heat [KJ/Kmol-K]')
legend('Observed Value','Cubic Value')
grid on

figure(4)
plot(temp,cp,'linewidth',3)
hold on
plot(temp,yfit_predicted,'linewidth',3)
plot(temp,yfit_linear,'linewidth',3)
plot(temp,yfit_cubic,'linewidth',3)

title('Plotting an linear and cubic fit curve for polynomial cp data')
legend('Observed Value','Predicted value','Linear Value','Cubic Value')
xlabel('Tempreature [K]')
ylabel('Specfic heat [KJ/Kmol-K]')
grid on

% Finding out the max_error in fitting curve
Maximum_Predict_error = max(yresid_p)
disp(Maximum_Predict_error)

Maximum_Linear_error = max(yresid_1)
disp(Maximum_Linear_error)

Maximum_Cubic_error = max(yresid_2)
disp(Maximum_Cubic_error)