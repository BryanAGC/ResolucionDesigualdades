% Octave Scrip
% Title               :Solucion de inecuaciones
% Descripcion         :Scrip para resolver inecuaciones de 
%                         primer grado,segundo grado y valor absoluto
% Author              :Bryan Abner Garcia Cruz
% Date                :202123180
% Version             :1
% Usage               :octave> /path/ResolucionDesigualdades
% Notes               :Requiere aplicacion octave
%                     :https://octaveintro.readthedocs.io/en/latest/index.html

pkg load symbolic

% solucion de inecuaciones de primer grado
disp('Solucion de la inecuacion de primer grado');
disp('(x<-7)')
syms x
solve(x<-7)
x=(-20:5)
y=x+7
subplot(3,3,1);
hold on
plot([-20 5],[0 0],'k+-',"linewidth",5,"markersize",12);
plot([0 0],[-15 15],'k-',"linewidth",5);
plot(x,y,'ro-')
plot(x,sign(y)*5,'bs-')
title( "(x<7-)")

% solucion de inecuaciones de segundo grado
disp('Solucion de la inecuacion de segundo grado');
disp('(x^2+6<6,x,)')
syms x
solve(x^2+8<9,x)
subplot(3,3,2);
y=8*x-9
ezplot((x)^2,y)




% solucion de inecuaciones de valor absoluto
disp('Solucion de la inecuacion de valor absoluto');
disp("|x+8|<3")
solve(abs(x+8)>3)

subplot(3,3,4)
x=[-100:-11]
y=x+8
plot(x,y,'ro-',"markersize",10,"linewidth",3)
hold on
plot([-20 7.8],[0,0],'k+-',"linewidth",5,"markersize",12)
plot([0 0],[-15 15],'k-',"linewidth",5)
plot(x,sign(y)*5,'bs-',"markersize",12)
xlabel("Eje X","fontsize",20)
title( "Intervalo de  (-oo,-11)")

subplot(3,3,5)
x=[-5:100]
y=x+8
plot(x,y,'ro-',"markersize",10,"linewidth",3)
hold on
plot([-20 7.8],[0,0],'k+-',"linewidth",5,"markersize",12)
plot([0 0],[-15 15],'k-',"linewidth",5)
plot(x,sign(y)*5,'bs-',"markersize",12)
xlabel("Eje X","fontsize",20)
title( "Intervalo de  (-5,oo)")

