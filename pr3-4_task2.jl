#Задача 2, усовершенствованная сортировака пузырьком

function new_buble_sort1(a::Vector{Int})
    i_min=minimum(a)
    for i in 1:length(a)
        if ( a[i]!= min)
            for j in i:length(a)
                if (a[i]>a[j])
                    a[i],a[j]=a[j],a[i]
                end
            end
            i_min=a[i]
        end
    end
    return a
end

function new_buble_sort2(a::Vector{Int})    #ShakerSort
    left=2
    right=length(a)
    while (left<=right)
        for i in right:left
            if (a[i-1]>a[i])
                a[i-1],a[i]=a[i],a[i-1]
            end
        end
        for i in left:right
            if (a[i-1]>a[i])
                a[i],a[i-1]=a[i-1],a[i]
            end
        end
        left+=1
        right-=1
    end
    return a
end