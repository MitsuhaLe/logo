P = [-2  1.7 2 0;
    5  4 -3 -3.5];
P = cubicbezier(P);
plot(P(1,:),P(2,:),'b-','LineWidth',3)
grid on
axis equal
hold on

P = [2.4  -1.8 -2 0;
    4.3  4.8 -3 -3.5];
P = cubicbezier(P);
plot(P(1,:),P(2,:),'b-','LineWidth',3)
hold on

P = [2.4  5 -2 -3.7;
    4.3  3 -3.4 -0.5];
P = cubicbezier(P);
plot(P(1,:),P(2,:),'b-','LineWidth',3)
hold on

P = [4  2.2 -4.4 -3.7;
    0  3.2 2.7 -0.5];
P = cubicbezier(P);
plot(P(1,:),P(2,:),'b-','LineWidth',3)
hold on