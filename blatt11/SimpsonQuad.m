function Sn = SimpsonQuad(x,f,n)
    % Input:
    %   x : Vector der stuetzstellen
    %   f : Vector der Funtionswerte der Stuetzstellen
    %   n : Anzahl der Stuetzstellen / 2
    % Return:
    %   Sn : Integral

    h = x(2)-x(1);

    Sn = h/3 * (f(1) + 2*sum(f(3:2:end-2)) + 4*sum(f(2:2:end))+f(end));

end
