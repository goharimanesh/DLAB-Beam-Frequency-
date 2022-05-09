function yn=tuner1(xx)
tt=0:0.01:7;
global P
a=xx(1);
b1=xx(2);b2=xx(3);
w1=xx(4);w2=xx(5);
phi1=xx(6);phi2=xx(7);
tau=xx(8);
yn=a+(b1*sin(w1*tt+phi1)+b2*cos(w2*tt+phi2)).*exp(-tau*tt);

y=P(:,2);
t=linspace(0,7,14);
figure(1);clf;hold on
plot(t,y)
plot(tt,yn,'r')

