% Вывод результатов вычислительного экспримента
% (с) В.А.Мещеряков, 2007

TorqOut = zeros(size(TorqP,2), size(TorqP,3));
TorqOut(:,:)=TorqP(1, :, :);

t  = TorqOut(1, :);

fr = TorqOut(2, :);
fl = TorqOut(3, :);

yr = TorqOut(4, :);
yl = TorqOut(5, :);

hr = TorqOut(6, :);
hl = TorqOut(7, :);
ha = TorqOut(8, :);

V = TorqOut(9, :);
P = TorqOut(10, :);
N = TorqOut(11, :);

w1 = TorqOut(12, :);
w2 = TorqOut(13, :);
i =  TorqOut(14, :);

vt = TorqOut(15, :);
v  = TorqOut(16, :);
slipp =  TorqOut(17, :);
K =  TorqOut(18, :);

figure; plot(t, fr, t, fl, t, yr, t, yl); grid on; title('Высотные координаты микрорельефа и отвала, f, y, м')
figure; plot(t, hr, t, hl, t, ha); grid on; title('Глубина резания h, м')
figure; plot(t, V); grid on; title('Объем призмы волочения, м^3')
figure; plot(t, P); grid on; title('Сила сопротивления P, Н')
figure; plot(t, N); grid on; title('Тяговая мощность N, Вт')
figure; plot(t, w1, t, w2); grid on; title('Угловые скорости насосного и турбинного колес ГТР w1, w2, рад/с')
figure; plot(t, i, t, K); grid on; title('Передаточное отношение i, коэф-т трансформации ГТР K')
figure; plot(t, vt, t, v); grid on; title('Теоретическая и действительная скорости vt и v, м/с')
figure; plot(t, slipp); grid on; title('Коэф-т буксования')

%{
t = 0:0.01:20;
figure; plot(t, fr(7000:9000), t, fl(7000:9000), t, yr(7000:9000), t, yl(7000:9000)); grid on; title('f, y')
figure; plot(t, hr(7000:9000), t, hl(7000:9000), t, ha(7000:9000)); grid on; title('h')
figure; plot(t, V(7000:9000)); grid on; title('объем призмы')
figure; plot(t, P(7000:9000)); grid on; title('P')
figure; plot(t, N(7000:9000)); grid on; title('N')
figure; plot(t, w1(7000:9000), t, w2(7000:9000)); grid on; title('w1, w2')
figure; plot(t, i(7000:9000), t, K(7000:9000)); grid on; title('i, K')
figure; plot(t, vt(7000:9000), t, v(7000:9000)); grid on; title('vt, v')
figure; plot(t, slipp(7000:9000)); grid on; title('буксование')
%}