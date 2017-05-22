function [l,z] = Potenzmethode(A, z0, kmax)
% Funktion um groessten Eigenwert zu approximieren mit zugehoerigem Eigenvektor
    z = z0;
    for k=1:kmax
        z = A * z;
        l = norm(z);
        z = z / l;
    end
end
