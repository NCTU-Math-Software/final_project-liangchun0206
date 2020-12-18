function plot_prime
    M=mat_gen(200);

    for ii = 1:40000
        if isprime(ii)==0
            [row,col]=find(M==ii);
            plot(col,row,'.','Color','w','MarkerSize',10);hold on;
            set(gca,'color','m')
        else
            [row,col]=find(M==ii);
            plot(col,row,'.','Color','k','MarkerSize',10);hold on;
            set(gca,'color','m')
        end
    end
end

function M=mat_gen(n)
%input: size of matrix.
%output: desired matrix.

    M=zeros(n,n);
    if rem(n,2)==1
        M((n+1)/2,(n+1)/2)=1;
        [row,col] = find(M==1);
        for ii = 2:2:(n-1)
            M(row,col+1)=((ii-1)^2)+1;
            col=col+1;
            val=((ii-1)^2)+1;
            for jj=1:ii-1
                M(row+jj,col)=val+jj;
            end
            val=val+ii-1;
            [row,col] = find(M==val);
            
            for jj=1:ii
                M(row,col-jj)=val+jj;
            end
            val=val+ii;
            [row,col] = find(M==val);
            
            for jj=1:ii
                M(row-jj,col)=val+jj;
            end
            val=val+ii;
            [row,col] = find(M==val);
            
            for jj=1:ii
                M(row,col+jj)=val+jj;
            end
            val=val+ii;
            [row,col] = find(M==val);
            
        end
    else
        M(n/2+1,n/2+1)=1;
        M(n/2+1,n/2)=2;
        M(n/2,n/2)=3;
        M(n/2,n/2+1)=4;
        [row,col] = find(M==4);
        for ii = 3:2:(n-1)
            M(row,col+1)=((ii-1)^2)+1;
            col=col+1;
            val=((ii-1)^2)+1;
            for jj=1:ii-1
                M(row+jj,col)=val+jj;
            end
            val=val+ii-1;
            [row,col] = find(M==val);
            
            for jj=1:ii
                M(row,col-jj)=val+jj;
            end
            val=val+ii;
            [row,col] = find(M==val);
            
            for jj=1:ii
                M(row-jj,col)=val+jj;
            end
            val=val+ii;
            [row,col] = find(M==val);
            
            for jj=1:ii
                M(row,col+jj)=val+jj;
            end
            val=val+ii;
            [row,col] = find(M==val);
            
        end
    end
      
end