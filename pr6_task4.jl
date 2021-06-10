function binomial_coeffs_a(n::Integer)::Vector{Int}
    c=Int[]
    for _ in 1:n
        c=vcat(1, c[1:end-1] .+ c[2:end], 1)
    end
    return c
end

function binomial_coeffs_b(n::Integer)::Vector{Int}
    c=Int[]
    for k in 1:n
        if k==1
            append!(c,div((n-k+1),k))
        else
            append!(c,div((n-k+1)*c[k-1],k))
        end
    end
    pushfirst!(c,1)
    return c
end

function binomial_coeffs_g(n::Integer)::Vector{Int}
    c=Int[]
    for k in 1:div(n,2)
        if k==1
            append!(c,div((n-k+1),k))
        else
            append!(c,div((n-k+1)*c[k-1],k))
        end
    end
    pushfirst!(c,1)
    return c
end
