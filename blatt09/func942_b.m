function vecu=func942_b(x)
vecu = zeros(8,1);

for k=0:8
    if k == 0
        if (x>=0 && x<1)
            u=1-x;
        else
            u=0;
        end
    elseif k == 8
        if (x>=7 && x<=8)
            u = x-7;
        else
            u = 0;
        end
    else
        if (x>=k-1 && x<k)
            u = x-(k-1);
        elseif (x>=k && x<k+1)
            u = k+1-x;
        else
            u=0;
        end
    end
end
vecu(k+1) = u;

end

