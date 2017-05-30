f=inline('x^3-x-1','x');
f_abl=inline('3*x^2-1','x');

err=1e-4;
kmax=200;
%f(a)*f(b)<0
a=0;
b=2;
x0=0; %x0 in (a,b)


%Newton:
x_newt_0 = x0;
for k_newt = 1:200
    x_newt = x_newt_0 - f(x_newt_0)/(f_abl(x_newt_0));
    if( abs(x_newt - x_newt_0) <= err )
        break;
    end
    x_newt_0 = x_newt;
end


%Bisektion:
a_bis = a;
b_bis = b;
%geg a<b mit f(a)f(b) < 0
for k_bis = 1:200
    if(abs(b_bis-a_bis) <= err)
        break;
    end
    x_bis = 1/2*(a_bis+b_bis);
    if( f(x_bis)*f(a_bis) >0)
        a_bis = x_bis;
    else
        b_bis = x_bis;
    end
end

	
%Sekantenverfahren:

x_sek_l = [a,b];
k_sek = 0;
x_sek = b;

for k_sek = 1:200
    if( abs(x_sek_l(2) - x_sek_l(1)) > err)
        break;
    end
    x_sek = x_sek_l(1) - f(x_sek_l(2))*(x_sek_l(2)-x_sek_l(1))/(f(x_sek_l(2))-f(x_sek_l(1)));
    x_sek_l = [x_sek_l(2),x_sek];
end

%Regula Falsi:
a_regfal = a;
b_regfal = b;
for k_regfal = 1:200
    x_regfal = (a_regfal * f(b_regfal) - b_regfal * f(a_regfal) ) / (f(b_regfal) - f(a_regfal));


    if( f(x_regfal) * f(a_regfal) > 0)
        a_regfal = x_regfal;
    else
        b_regfal = x_regfal;
    end
    
    if(abs(x_regfal - a_regfal) <= err || abs(x_regfal - b_regfal) <= err)
        break;
    end
end

%%Fixpunktiteration
%%f(x)=0 <==>Loese Phi(x)=x nach x, mit Phi geeignet
%a) 
Phi1 = inline('x^3-1','x');
x1_fix_0 = x0;
k1_fix = 0;

for k1_fix = 1:200
    x1_fix = Phi1(x1_fix_0);
    x1_fix_0 = x1_fix;
    if(abs(x1_fix-x1_fix_0) <= err)
        break;
    end
end

%b)
%Phi_2
Phi2 = inline('(x+1)^(1/3)','x');
x2_fix_0 = x0;
for k2_fix = 1:200
    x2_fix = Phi2(x2_fix_0);
    x2_fix_0 = x2_fix;
    if(abs(x2_fix - x2_fix_0) <= err)
        break;
    end
end



 fprintf('--------------------------------------------------------- \n')
 fprintf('f=x^3-x-1  Nullstelle: x=1.32472\n')
 fprintf('--------------------------------------------------------- \n')
 fprintf('Newton              ,  k=%2.0f   x=%2.4d \n', k_newt,x_newt)
 fprintf('Sekantenverfahren   ,  k=%2.0f   x=%2.4d \n', k_sek,x_sek)
 fprintf('Bisektion           ,  k=%2.0f   x=%2.4d \n', k_bis,x_bis)
 fprintf('Regula Falsi        ,  k=%2.0f   x=%2.4d \n', k_regfal,x_regfal)
 fprintf('Fixpunktiteration a),  k=%2.0f   x=%2.4d \n', k1_fix,x1_fix) 
 fprintf('Fixpunktiteration b),  k=%2.0f   x=%2.4d \n', k2_fix,x2_fix) 




