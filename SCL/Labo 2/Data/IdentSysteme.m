% CHARGEMENT DES DONNÉES
%
% À partir de vos données, MODIFIER SI NÉCESSAIRE LE CODE SUIVANT
% pour former la  matrice data_id qui doit contenir au moins 3 colonnes:
%
% colonne 1: temps
% colonne 2: entrée u du système
% dernière colonne (3 ou plus): sortie y du système

% load Labo2_4_5.mat % Dans cet exemple le fichier procede1.asc est un fichier
                  % ASCII ne contenant que 2 colonnes:
                  % - colonne 1: entrée u du système
                  % - colonne 2: sortie y du système
                  %
                  % procede1 est la matrice des données
                  %
                  % Il faut donc créer la colonne temps en sachant que la 
                  % période d'échantillonnage utilisée lors de la récolte
                  % des données fut de 2 secondes
 
%N=size(procede1,1); % Nombre de lignes de procede1
%t=0:1:N-1; % Création du vecteur temps de la bonne longueur
           % t=[0; 1; 2; .....; N-1]
%t=2*t';  % Bon pas d'échantillonnage: t=[0; 2; 4; ...; 2*(N-1)]

% dataid=LaboSimLab; % Création de la matrice dataid qui respecte les normes demandées.


% Le code qui suit va créer les données d'identification en soustrayant
% le premier point aux données d'entrée et de sortie. Les données seront
% également tracées.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NE RIEN MODIFIER DANS CE QUI SUIT

% création des vecteurs t, u et y
% Ncol=size(dataid,2);
% t=dataid(:,1);
% u=dataid(:,2);
% y=dataid(:,Ncol);
% 
% y(175)=5.0000;
% y(176:634)=y(176:634)+10;
% y(635:1197)=y(635:1197)+20;
% y(638)=15;
% y(1198:1652)=y(1198:1652)+30;
% y(1199)=25;
% y(1201)=25;
% y(1653)=35;
% y(1655)=-5;
% y(1654:2193)=y(1654:2193)+40;
% y(2197:2198)=-5;
% y(2194:2501)=y(2194:2501)+50;

% visualisation des données
% figure(1);
% subplot(211);
% plot(t,u,'o');
% ylabel('u');
% xlabel('t');
% title('Données brutes');
% subplot(212);
% plot(t,y,'o');
% ylabel('y');
% xlabel('t');

% soustraction des points d'opération
% u_id=u-u(1);
% y_id=y-y(1);

% visualisation des données sans les points d'opération
figure(2);
% subplot(211);
% plot(t,u_id,'o');
% ylabel('u_i_d');
% xlabel('t');
% title('Données d''identification');
%plot(t,y_id,'r',t,IdentSyst,'--b',t,IdentTheo,'c',LineWidth=1);
plot(u,y,'o-b',LineWidth=1);
grid on
grid minor
%legend({'Réponse expérimentale','Modèle {\it IdentSyst}','Modèle théorique'},'Location','northwest');
set(gca,'GridLineStyle','-',GridAlpha=0.8,minorgridalpha=0.7);
ylim([0 5.5])
ylabel('Tension de sortie [V]');
xlabel('Tension en entrée [V]');
exportgraphics(gcf,'Figure_6.pdf')
