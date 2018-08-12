%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    Here we are solving simple ODE   %                                       
%              y'(x)=f(x)             %   
%              y'(0)=const            %       
%        with initial condition       %
%                                     % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
% Written by Ali Hagverdiyev

clc; clear all; close all;

                                         

N=100;  % Number of points

h=1/N;  % Numerical Step

x=[0:h:1]; % Points on x-axis

xx=[0:0.001:1]

f=@(x) x.^2; % Function on the right hand side of y'

y_exact=@(x) x.^3/3; % Here we just compute by hand our exact solution just to compare

y_old=0;

y(1)=0;  % Here we assign our initial condition y(0)=const in particular for our code we have y(0)=0

for i=1:N

y_new=y_old+ h*(i*h)^2;

y_old=y_new;

y(i+1)=y_new;

end



plot(xx,y_exact(xx)); % Plot exact solution 'Blue' Plot

hold on

plot(x,y);   % plot numerical solution 'Red' Plot

% My second commit bbbbb