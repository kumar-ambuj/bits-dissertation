v=B0005.cycle(16).data.Voltage_measured(3:177);
t=B0005.cycle(16).data.Time(3:177)/3600;
l=length(t);
for i=1:l-1
    k(i)=-2*((t(i+1)-t(i))./(v(i+1)-v(i)));
end
v2=v(1,2:l);
c=smoothdata(k,'gaussian',15);
d=movmean(k,15);
plot(v2,k);
hold on;
plot(v2,d);
hold on;
plot(v2,c);
grid on;