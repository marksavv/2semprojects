A=Vector{Int64}(undef,6)
A=[19,1,2,3,4,5]

function buble_sort!( A::Vector{Int64})
    size=sizeof(A)
    for i in 1:size
        for j in i+1:size
            if (A[i]<A[i-1])
                v=x[i]
                A[i]=A[i-1]
                A[i-1]=v
            end
        end
    end
end

buble_sort( A::Vector{Int64})=buble_sort!(copy(A::Vector{Int64}))


function sort_perm!( A::Vector{Int64})
    size=sizeof(A)
    k=collect(1:size)
    for i in 1:size
        for j in i+1:size    
            if (A[i]<A[i-1])
                swap(A[i],A[i-1])
                swap(k[i], k[i-1])
            end
        end
    end
    return k
end

sort_perm( A::Vector{Int64})=sort_perm!(copy(A::Vector{Int64}))

















