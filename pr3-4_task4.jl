#Задача 4
function shellsort!(a::Vector{Int64})
    n=length(a)
    distseries=(n÷2^i for i in 1:Int(floor(log2(n)))) 
    # distseries - это ГЕНЕРАТОР последовательности промежутков (т.е. члены этой последовательности будут вычисляться в процессе выполнения следующего цикла, заранее в памяти они не размещаются, как было бы при использовании массива или кортежа вместо генератора)
    for d in distseries
        for i in firstindex(a):lastindex(a)-d
            j=i
            while j>=firstindex(a) && a[j]>a[j+d]
                a[j],a[j+d] = a[j+d],a[j]
                j-=d
            end
        end
    end
    return a
end