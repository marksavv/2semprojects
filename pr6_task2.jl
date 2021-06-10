function merg(a,b)
    c=promote_type(eltype(a),eltype(b))[]
    for x in a
        append!(c,x)
    end
    for x in b
        append!(c,x)
    end
    return c
end

function part_sort_a2(a,b)
    a1=Vector{eltype(a)}(undef,length(a))
    a2=Vector{eltype(a)}(undef,length(a))
    a3=Vector{eltype(a)}(undef,length(a))
    k=[1,1,1]
    for i in 1:length(a)
        if a[i]<b
            a1[k[1]]=a[i]
            k[1]=k[1]+1
        elseif a[i]==b
            a2[k[2]]=a[i]
            k[2]=k[2]+1
        else
            a3[k[3]]=a[i]
            k[3]=k[3]+1
        end
    end
    return merg(merg(a1[1:k[1]-1],a2[1:k[2]-1]),a3[1:k[3]-1])
end
function part_sort_a1(a,b)
    a1=eltype(a)[]
    a2=eltype(a)[]
    a3=eltype(a)[]
    for x in a
        if x<b
            push!(a1,x)
        elseif x==b
            push!(a2,x)
        else
            push!(a3,x)
        end
    end
    return merg(merg(a1,a2),a3)
end

function part_sort_b(a,b)
    l=0
    m=0
    k=0
    for i in 1:length(a)
        if a[i]<b
            l=l+1
            m=m+1
            k=k+1
            a[l],a[i]=a[i],a[l]
        elseif a[i]==b
            m=m+1
            k=k+1
            a[m],a[i]=a[i],a[m]
        else
            k=k+1
            a[k],a[i]=a[i],a[k]
        end
    end
    return a
end
