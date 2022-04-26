w=csvread('w.csv');
real=csvread('real.csv');
phase=csvread('phase.csv');
magnitude=csvread('magnitude.csv');
image=csvread('imag.csv');


Bode = figure;
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
semilogx(ax1,w(:,1),magnitude(:,1),'-','MarkerFaceColor',[0 0.447 0.741],Color = 'b')
title('Diagrammes de Bode')
ylabel(ax1,"Rapport d'amplitude [dB]")
grid on

% Bottom plot
ax2 = nexttile;
semilogx(ax2,w(:,1),phase(:,1),'-','MarkerFaceColor',[0 0.447 0.741],Color='b')
ylabel(ax2,'Phase [°]')
xlabel("Fréquence [rad/s]")
grid on


Nyquist = figure;
figure(Nyquist);
plot(real(:,1), image(:,1),'-','MarkerFaceColor',[0 0.447 0.741],Color='r')
title('Lieu de Nyquist')
xlabel("Réel")
ylabel("Imaginaire")
grid on


Black = figure;
figure(Black);
plot(phase(:,1), magnitude(:,1),'-','MarkerFaceColor',[0 0.447 0.741],Color='#15B01A')
title('Lieu de Black')
xlabel("Phase [°]")
ylabel("Rapport d'amplitude [dB]")
grid on


