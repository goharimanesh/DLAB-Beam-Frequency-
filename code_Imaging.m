% This code is written by Masoud Goharimanesh, PhD at the University of Torbat Heydarieh, Iran
clc;clear;clf;
global P
P=[];
% Put the  folder address of your pics in below:
% Input data
srcFiles = dir('J:\1-Library\12-Academic Contents\03-Vibration-Dynamic Lab\04-Finding Natural Frequency\Vibration\OutputPics\*.jpg');  
for i=1:40
       filename = strcat('J:\1-Library\12-Academic Contents\03-Vibration-Dynamic Lab\04-Finding Natural Frequency\Vibration\OutputPics\',srcFiles(i).name);
    I = imread(filename);
I1=imshow(I);
P(i,:)=ginput(1);
% plot(P(1),P(2),'.r','markersize',30);
end
% Plotting
figure(1);clf;hold on
t=linspace(0,8,40);
y=P(:,2);
plot(t,y)
tt=0:0.01:8;
w=14;
tau=1.02;
a=525;
b=307;
yn=a+b*sin(w*tt).*exp(-tau*tt);
plot(tt,yn,'r')
legend('Real','Estimated')
xlabel('Time[sec]')
ylabel('Amplitude')