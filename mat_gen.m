function sum=mat_gen(n)
tic
    M=zeros(n,n);
    
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
    format long 
    sum=0;
    for ii =1 :n
        sum=sum+M(ii,ii)+M(n-ii+1,ii);
    end
    
    sum=sum-1;
    disp(sum);
 toc   
end