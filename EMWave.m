clc
close all

x = linspace(0,0.1,100);
m = zeros(1,100);
t = 0;

phi = pi/3; %phase angle

la = 4e-2;
f = 15e9;
w = 2*pi*f;
b = 2*pi/la;

y = 1*sin(w*t -b*x + phi); %Ele wave
z = 1*sin(w*t -b*x); %Mag wave

r = [y,z];

for i=100:-2:1
    subplot(1,2,1)
    plot3(x,m,z,'b'); %mag field
    hold on
    plot3(x,y,m,'r'); %ele field
    hold on
    plot3(x,m,m,"y");
    hold on
    axis manual;
    grid on;
    axis([-0.05 0.15 -1 1 -1 1])
    plot3(x(i),y(i),m,'or','MarkerSize',5)
    drawnow
    plot3(x(i),m,z(i),'or','MarkerSize',5)
    drawnow
    hold off;
    subplot(1,2,2)
    axis equal;
    axis([-2 2 -2 2])
    plot(y(i),z(i),'or','MarkerSize',3,'MarkerFaceColor','b');
    hold on;
    if(i==100)
        pause(2)
    end
    
end
close all