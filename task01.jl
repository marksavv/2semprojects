A=Vector{Int64}(undef,6)
A=[19,1,2,3,4,5]


function merge( A::Vector{Int64}, B::Vector{Int64})
    n=length(A)+length(B)
    C=Vector{Int64}(undef,n)

    i=1
    a=1
    b=1

    while i<n+1
        if ((A[a]<B[b]) && (a<length(A))) 
            C[i]=A[a]
            i=i+1
            a=a+1
        elseif (b<length(B))
            C[i]=B[b]
            b=b+1
            i=i+1
        end
    
    end
   
    return C
end

function reverse_user!( A )   #A::Vector{Int64}
    sort!(A)
    n=length(A)
    C=Vector{Int64}(undef,n)

    for i in 1:n
        C[i]=A[n-i+1]
    end
    return C
end

B=[1 2
   3 4]



function reverse_user2!( B::Matrix)
    C=Matrix{Int}(undef,size(B))

    C[1,:]=reverse_user!(B[1,:])
    B[1,:]=reverse_user!(B[1,:])
    C[2,:]=reverse_user!(B[2,:])
    B[2,:]=reverse_user!(B[2,:])
    C[:,1]=reverse_user!(B[:,1])
    C[:,2]=reverse_user!(B[:,2])
    
    
    return C
end
