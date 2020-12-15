function sum=mat_gen_val(n)
%input: size of matrix.
%output: sum of diagonal and back-diagonal term.
    sum=0;
    if rem(n,2)==0
        for ii = 2:2:n
            sum=sum+4*(ii^2);
            sum=sum-6*(ii-1);
        end
    else
        for ii = 3:2:n
            sum=sum+4*(ii^2);
            sum=sum-6*(ii-1);
        end
        sum=sum+1;
    end
    
end