controlPoints = [   0       0;
                    5.1     -7.7;
                    3.1     -13;
                    0.9     -7.7;
                    7.7     -1.5;
                    -2.7    -7.7;
                    3.1     -4.6;
                    9.2     -7.7    ];
controlPoints =  controlPoints';

auxiliaryShift = [  2.1     -1.1;
                    -0.25   4.1;
                    0.2     -2.8;
                    0.8     0;
                    -1      0;
                    -0.1    -2.75;
                    0.1     5.4;
                    -0.2    2.3;
                    0.5     -6.5;
                    -0.1    -4.3;
                    0.25    1.95;
                    -2.4    0;
                    3.6     0;
                    -0.25   0.45   ];
auxiliaryShift = auxiliaryShift';

nLines = length(controlPoints);
for iLine = 1 : nLines-1
    p1 = controlPoints(:, iLine);
    p2 = controlPoints(:, iLine+1);
    s1 = auxiliaryShift(:, 2*iLine-1);
    s2 = auxiliaryShift(:, 2*iLine);
    P = [p1, p1+s1, p2+s2, p2];
    plot(P(1,:),P(2,:),'r^')
    hold on
    P = cubicbezier(P);
    plot(P(1,:),P(2,:),'b-','LineWidth',3)
    
    axis equal
    axis off
    grid on
    hold on
end


