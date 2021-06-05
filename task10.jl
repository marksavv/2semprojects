function nummax(A)
    max = 1
    count=0
    for i in eachindex(A)
        if A[i] > A[max] 
            max = i
        end
    end
    
    for j in eachindex(A)
        if A[j] == A[max] 
            count+=1
        end
    end

    return count
end