clear;
close all;

NIS_radar = load('build/NIS_radar.txt');
NIS_laser = load('build/NIS_laser.txt');
dt = 0.2;  %the time elapsed between two same measurements

figure(1);
subplot(2,1,1);
plot(dt*(1:length(NIS_radar)),NIS_radar);
hold on;
plot([dt,dt*length(NIS_radar)],[7.8,7.8]);
xlabel('Time(s)');
ylabel('NIS of radar')
title('NIS of radar');
hold off;

subplot(2,1,2);
plot(dt*(1:length(NIS_laser)),NIS_radar);
hold on;
plot([dt, dt*length(NIS_laser)],[6.0,6.0]);
xlabel('Time(s)');
ylabel('NIS of laser')
title('NIS of laser');
hold off;

saveas(gcf,'NIS_output.jpg'),