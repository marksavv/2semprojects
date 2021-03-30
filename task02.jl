#task2

A=[19,1,2,3,4,5]

function copy(v::Vector{Int64})
    n=length(v)
    C=Vector{Int64}(undef,n)

    for i in 1:n
        C[i]=v[i]
    end

    return C
end

B=[1 2
   3 4]

function copy( B::Matrix)
    C=Matrix{Int}(undef,size(B))

    n=size(B);
    

    for i in 1:n[1]
        for j in 1:n[1]
            C[i,j]=B[i,j]
        end
    end

    
    return C
end
