C=[1 2 3
   4 5 6
   7 8 9]


#4
function reverse_user!( B::Matrix, S::Int64)    #матрица и кол-во столбцов
    C=Matrix{Int}(undef,size(B))

    for i in 1:S

        C[:,i]=reverse_user!(B[:,i])
        B[:,i]=reverse_user!(B[:,i])
        
    end
    
    return C
end
