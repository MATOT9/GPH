% CHARGEMENT DES DONN�ES
%
% � partir de vos donn�es, MODIFIER SI N�CESSAIRE LE CODE SUIVANT
% pour former la  matrice data_id qui doit contenir au moins 3 colonnes:
%
% colonne 1: temps
% colonne 2: entr�e u du syst�me
% derni�re colonne (3 ou plus): sortie y du syst�me

load Data/Labo2_4_4.mat % Dans cet exemple le fichier procede1.asc est un fichier
                  % ASCII ne contenant que 2 colonnes:
                  % - colonne 1: entr�e u du syst�me
                  % - colonne 2: sortie y du syst�me
                  %
                  % procede1 est la matrice des donn�es
                  %
                  % Il faut donc cr�er la colonne temps en sachant que la 
                  % p�riode d'�chantillonnage utilis�e lors de la r�colte
                  % des donn�es fut de 2 secondes
 
% N=size(Labo2_4_2,1); % Nombre de lignes de procede1
% t=0:1:N-1; % Cr�ation du vecteur temps de la bonne longueur
           % t=[0; 1; 2; .....; N-1]
% t=0.01*t';  % Bon pas d'�chantillonnage: t=[0; 2; 4; ...; 2*(N-1)]

dataid=LaboSimLab; % Cr�ation de la matrice dataid qui respecte les normes demand�es.


% Le code qui suit va cr�er les donn�es d'identification en soustrayant
% le premier point aux donn�es d'entr�e et de sortie. Les donn�es seront
% �galement trac�es.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NE RIEN MODIFIER DANS CE QUI SUIT

% cr�ation des vecteurs t, u et y
Ncol=size(dataid,2);
t=dataid(:,1);
u=dataid(:,2);
y=dataid(:,Ncol);

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
u_id=u-u(1);
y_id=y-y(1);

% visualisation des donn�es sans les points d'op�ration
figure(2);
% subplot(211);
% plot(t,u_id,'o', Color='b');
% ylabel('u_i_d');
% xlabel('t');
% title('Donn�es d''identification');
% subplot(212);
% plot(t,y_id,'r', t,IdentSystGuess,'--b',LineWidth=1);
% grid on
% grid minor
% legend({'R�ponse exp�rimentale','Mod�le {\it IdentSyst}'},'Location','southeast');
% set(gca,'GridLineStyle','-',GridAlpha=0.8,minorgridalpha=0.7);
% ylim([-0.5 3.5])
% ylabel('Tension de sortie [V]');
% xlabel('Temps [s]');
% exportgraphics(gcf,'Figure_3.pdf')
