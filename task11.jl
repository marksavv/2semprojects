function findallmax(A)
    max = 1
    count=0
    for i in eachindex(A)
        if A[i] > A[max] 
            max = i
        end
    end
    
    for j in eachindex(A)
        if A[j] == A[imax] 
            count+=1
        end
    end
    
    arr=collect(1:count)
    c=1
    for k in eachindex(A)
        if A[k] == A[max] 
            arr[c]=k
            c+=1
        end
    end
    return arr
end
