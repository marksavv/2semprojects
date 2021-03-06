function convert!(A)
    for k in firstindex(A,1):lastindex(A,1)
        imax = argmax1(abs,@view A[k:end,k])+k-1
        colon_to_zeros!(A,k,imax)
    end
end

function colon_to_zeros!(A,k,imax)
    if imax != k
        A[k,:], A[imax,:] = A[imax,:], A[k,:] 
    end
    for i in k+1:lastindex(A,1)
        if isapproxzero(A[i,k]) 
            continue
        end
        t=-A[i,k]/A[k,k]
        A[i,k:end] += t*(@view A[k,k:end])  
    end
end

function argmax1(f::Function, a::AbstractVector)
    imax = firstindex(a)
    for i in firstindex(a)+1:lastindex(a)
        if f(a[i])>f(a[imax])
            imax = i
        end
    end
    return imax
end

function isapproxzero(a)
    isapprox(a,0.0; atol=1e-8)
end
Am = [10.0 20.0 30.0 40.0 50.0
     60.0 70.0 80.0 90.0 95.0
     15.0 25.0 35.0 45.0 55.0
     65.0 75.0 85.0 96.0 97.0]