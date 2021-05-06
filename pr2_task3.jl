function sum(a)
    s=0
    for x in a
        s=s+x
    end
    return s
end
function zeros(a)
    s=0
    for x in a
        if x==0
            s=s+1
        end
    end
    return s
end

function sort_stolb_neub_summ(M)
    vec_of_colons=[@view M[:,j] for j in 1:size(M,2)]
    M=hcat(sortkey(sum,vec_of_colons))
    return M
end
function sort_stolb_neub_zeros(M)
    vec_of_colons=[@view M[:,j] for j in 1:size(M,2)]
    M=hcat(sortkey(zeros,vec_of_colons))
    return M
end