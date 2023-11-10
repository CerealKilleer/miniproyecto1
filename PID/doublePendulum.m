%% Pendulo Doble

clear all
close all
clc

% Model B
% states [x x_dot theta1 theta1_dot theta2  theta2_dot]
A1 = [0 1 0 0 0 0; 0 0 -33.794 0 -11.561 0; 0 0 0 1 0 0; ...
    0 0 0.641 0 34.748 0; 0 0 0 0 0 1; 0 0 2.394 0 -0.053 0];
B1 = [0 -2.641 0 2.231 0 0.889]';
C = eye(6);
D = zeros(6,1);
C1 = [0 0 1 0 0 0];
D1 = 0;
C2 = [0 0 0 0 1 0];
D2 = 0;

%% Modelo para Theta1 Salida
[num1,den1] = ss2tf(A1,B1,C1,D1);
%% Modelo para Theta2 Salida
[num3,den3] = ss2tf(A1,B1,C2,D2);
