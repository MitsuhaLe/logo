function P = cubicbezier(contPionts)
% 绘制四个控制点的3次贝塞尔曲线

nSample = 1000;
t = linspace(0,1,nSample);
tSquare = t.^2;
tCubic = t.^3;

coff0 = - tCubic + 3 * tSquare - 3 * t + ones(1,nSample);
coff1 = 3 * tCubic - 6 * tSquare + 3 * t;
coff2 = - 3 * tCubic + 3 * tSquare;
coff3 = tCubic;

P = contPionts(:,1) * coff0 + contPionts(:,2) * coff1 + ...
    contPionts(:,3) * coff2 + contPionts(:,4) * coff3; 

end