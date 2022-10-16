% xp = input('Enter x value to interpolate at: '); %%define the value of x to interpolate at

xp = -1:.25:1;
yp = 1./(1+25*xp.^2);
plot(xp,yp, 'o', 'Color','r');
hold on;
n = length(xp);
p = zeros(1,n);

xx = -1:1/128:1;
m = length(xx);
yy = zeros(1,m);

for k=1:m
x = xx(k)
sm = 0;
  for r = 1:n
    p(r) = 1;
    for j = 1 : n
        if abs(r-j)>0  
            p(r) = p(r) * (x-xp(j))/(xp(r) - xp(j));
        end
    end
    sm = sm + yp(r) * p(r);
  end
yy(k) = sm;
end
plot(xx,yy, 'g')
