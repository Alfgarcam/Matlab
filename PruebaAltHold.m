% Archivo para obtner las variables necesarias del archivo.log que contiene
% todos los datos de vuelo.

%load DatosAnalisisLoiter;
run 'Altholdroll1'

x1 = ATT.data(427:512,4);
t1 = ATT.data(427:512,1);

run 'Altholdroll'

x2 = ATT.data(483:572,4);
t2 = ATT.data(483:572,1);



%% Variables necesarias.
% Se guardan las variables que serán necesarias para la comparación del
% modo Loiter con nuestro modelo.

% Tiempo modificado.
t_mod1 = t1-117.5064;
t_mod2 = t2-122.2039;

% 
figure(1)
%plot(t_mod,x,'b',t_mod,y,'r');
plot(t_mod1,x1,'b',t_mod2,x2,'r');
grid
