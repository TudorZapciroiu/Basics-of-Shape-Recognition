function ellipticFourierDescriptors(c, nc)

X = c(1,:);
Y = c(2,:);
m = length(X);
T = m;
w = 2*pi/T;
tau = T/m;

% calculul coeficientilor seriei Fourier
ax = [];
bx = [];
for k = 1:nc
    ax(k) = 0;
    bx(k) = 0;
    for i = 1:m
        ax(k) = ax(k) + X(i)*cos(k*w*i*tau);
        bx(k) = bx(k) + X(i)*sin(k*w*i*tau);
    end
end

ax = (2/m)*ax;
bx = (2/m)*bx;
ax0 = 2/m*sum(X);
bx0 = 0;

ay = [];
by = [];

for k = 1:nc
    ay(k) = 0;
    by(k) = 0;
    for i = 1:m
        ay(k) = ay(k) + Y(i)*cos(k*w*i*tau);
        by(k) = by(k) + Y(i)*sin(k*w*i*tau);
    end
end

ay = (2/m)*ay;
by = (2/m)*by;
ay0 = 2/m*sum(Y);
by0 = 0;