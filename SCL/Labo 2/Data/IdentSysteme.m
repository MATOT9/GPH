% CHARGEMENT DES DONN�ES
%
% � partir de vos donn�es, MODIFIER SI N�CESSAIRE LE CODE SUIVANT
% pour former la  matrice data_id qui doit contenir au moins 3 colonnes:
%
% colonne 1: temps
% colonne 2: entr�e u du syst�me
% derni�re colonne (3 ou plus): sortie y du syst�me

% load Labo2_4_5.mat % Dans cet exemple le fichier procede1.asc est un fichier
                  % ASCII ne contenant que 2 colonnes:
                  % - colonne 1: entr�e u du syst�me
                  % - colonne 2: sortie y du syst�me
                  %
                  % procede1 est la matrice des donn�es
                  %
                  % Il faut donc cr�er la colonne temps en sachant que la 
                  % p�riode d'�chantillonnage utilis�e lors de la r�colte
                  % des donn�es fut de 2 secondes
 
%N=size(procede1,1); % Nombre de lignes de procede1
%t=0:1:N-1; % Cr�ation du vecteur temps de la bonne longueur
           % t=[0; 1; 2; .....; N-1]
%t=2*t';  % Bon pas d'�chantillonnage: t=[0; 2; 4; ...; 2*(N-1)]

% dataid=LaboSimLab; % Cr�ation de la matrice dataid qui respecte les normes demand�es.


% Le code qui suit va cr�er les donn�es d'identification en soustrayant
% le premier point aux donn�es d'entr�e et de sortie. Les donn�es seront
% �galement trac�es.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NE RIEN MODIFIER DANS CE QUI SUIT

% cr�ation des vecteurs t, u et y
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

% visualisation des donn�es
% figure(1);
% subplot(211);
% plot(t,u,'o');
% ylabel('u');
% xlabel('t');
% title('Donn�es brutes');
% subplot(212);
% plot(t,y,'o');
% ylabel('y');
% xlabel('t');

% soustraction des points d'op�ration
% u_id=u-u(1);
% y_id=y-y(1);

% visualisation des donn�es sans les points d'op�ration
figure(2);
% subplot(211);
% plot(t,u_id,'o');
% ylabel('u_i_d');
% xlabel('t');
% title('Donn�es d''identification');
%plot(t,y_id,'r',t,IdentSyst,'--b',t,IdentTheo,'c',LineWidth=1);
plot(u,y,'o-b',LineWidth=1);
grid on
grid minor
%legend({'R�ponse exp�rimentale','Mod�le {\it IdentSyst}','Mod�le th�orique'},'Location','northwest');
set(gca,'GridLineStyle','-',GridAlpha=0.8,minorgridalpha=0.7);
ylim([0 5.5])
ylabel('Tension de sortie [V]');
xlabel('Tension en entr�e [V]');
exportgraphics(gcf,'Figure_6.pdf')
