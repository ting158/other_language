s = 'a'
abs(s)

char(97)
num2str(13)

str = 'I love matlab & machine Learning'
length(str)

A = [12 3 3; 4 5 6; 7 8 9; ]
B = A'
C = A(:)
D = inv(A)
A * D

E = zeros(10,6,3)

%% 元胞数组

A = cell(1,3)

A{1} = eye(3)

A{2} = magic(5)

B = A{2}

%% 结构体

books = struct('name',{{'c程序设计','数据结构'}},'price',[30,40])
books.name
books.name(1)
books.name{1}

%% 矩阵操作
A = [1 2 3 4 5 5 6 8 9]
B = 1:3:12
C = repmat(B,3,2)
D = ones(4,3)

%矩阵的四则运算
A = [3 5; 32 2]
B = [5 12; 6 21 ]
C = A + B
D = A - B
E = A * B'
F = A .* B %对应项相乘
G = A / B %相当于A乘以B的逆
H = A ./ B %对应项相除

%矩阵的下标
A = magic(5)
B = A(2,4)
C = A(3,:)
D = A(:,4)
[m,n] = find(A > 20) %找到大于20的序号值/矩阵

E = [1 2 3 4 5 6]
[m,n] = find(E > 2)
%%

sum = 0
for n = 1:100
    sum = sum + n
end

sum = 0
for n = 1:5
    p = 1
    for m = 1:n
        p = p * m
    end
    sum = sum + p
end

n = 1
num = 0
while n <= 100
    num = num + n
    n = n + 1
end


a = 100
b = 20
if a < b
    '成立'
else
    '不成立'
end


a = 4
switch a
    case 1
        1
    case 2
        2
    otherwise
        0
end


%% 基本绘图操作
%二维平面绘图
x = 0:0.01:2*pi
y = sin(x)
figure %建立一个幕布
plot(x,y)  %绘制二维平面图
title('y = sin(x)')
xlabel('x')
ylabel('sin(x)')
xlim([0 2*pi])


x = 0:0.01:20
y1 = 200*exp(-0.05*x) .* sin(x)
y2 = 0.8*exp(-0.5*x) .* sin(10*x)
figure
[AX,H1,H2] = plotyy(x,y1,x,y2,'plot')
set(get(AX(1),'Ylabel'),'String','Slow Decay')
set(get(AX(2),'Ylabel'),'String','Fast Decay')
xlabel('Time (\musec)')
title('Multiple Decay Rates')
set(H1,'LineStyle','--')
set(H2,'LineStyle',':')

% 三维立体绘图
t = 0 : pi/50 : 10*pi
plot3(sin(t),cos(t),t)
xlabel('sin(t)')
ylabel('cos(t)')
zlabel('t')
grid on %加网格线
axis square %变成正方形

%% 图形的保存和导出

%%


[x,y,z] = peaks(30) %peaks用于产生双峰函数或用双峰函数去绘图
mesh(x,y,z)
grid










