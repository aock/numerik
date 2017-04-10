copyfile(fullfile('/home/amock/matlab_workspace/blatt01','somefunc.m'));

dbtype somefunc.m;

disp(somefunc(2,5));
disp(somefunc(pi,7));
disp(somefunc(sqrt(2),4));

