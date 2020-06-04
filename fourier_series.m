
%% Series de Fourier
clc
clear
close all
 
syms n t
  
Ao=0;
An=(4*(sin(pi*n/2))^2)/((pi)^2*n^2); 
Bn=0;
T=2;

wo=2*pi/T;
 
Arm=20;
 
for n=1:Arm
   f(n,:)=sum((An)*cos(n*wo*t)+((Bn)*sin(n*wo*t)));
end
t=linspace(0,5*T,1000);
f=subs(f,'t',t);
f(n+1,:)=zeros(1,1000);
plot(t,Ao+sum(f),'Linewidth',2); grid on
xlabel('\bf TIEMPO'); ylabel('\bf AMPLITUD');  
title('\bf SERIES DE FOURIER');
 
%% SERIES DE FOURIER ANIMADA
clc
clear
close all
syms n t
 
Ao=0;
An=(4*(sin(pi*n/2))^2)/((pi)^2*n^2) ;
Bn=0;
T=2;

wo=2*pi/T;
 
Arm=10;
 
for n=1:Arm
    syms t
    f(n,:)=sum((An)*cos(n*wo*t)+(Bn)*sin(n*wo*t));
    t=linspace(0,5*T,1000);
   
subplot(3,1,1);
plot(t, subs(f(n,:),'t',t)); grid on
xlabel('\bf TIEMPO'); ylabel('\bf AMPLITUD');  
title('\bf COMPONENTE'); hold on
 
subplot(3,1,2);
plot(t, Ao+subs(sum(f),'t',t), 'r', 'Linewidth',1.5); grid on
xlabel('\bf TIEMPO'); ylabel('\bf AMPLITUD');  
title('\bf SERIE DE FOURIER')
 
subplot(3,1,3);
Cn(n)=sqrt((An)^2+(Bn)^2);
stem(Cn,'fill'); grid on
xlim([1,Arm]);
xlabel('\bf ARMÓNICO'); ylabel('\bf AMPLITUD');  
title('\bf ESPECTRO DE FRECUENCIA'); pause(0.5)
end
