function is_norm(mnog)
    pairs=[[mnog[length(mnog)-1],mnog[1],mnog[2]]]
    u=1
    while u<length(mnog)-1
        push!(pairs,[mnog[u],mnog[u+1],mnog[u+2]])
        u=u+1
    end
    for x in pairs
        vec1=(x[2][1]-x[1][1],x[2][2]-x[1][2])
        vec2=(x[2][1]-x[3][1],x[2][2]-x[3][2])
        ugol=asin(sin(vec1,vec2))*180/pi
        res=true
        if round(ugol)>180 || ugol<=0
            return false
        end
    end
    return true
end

mnog=[s for s in zip([1.0,0.0,3.0,5.0,4.0,2.0,1.0],[0.0,2.0,7.0,2.0,-3.0,1.0,0.0])]
is_norm(mnog)

using Plots
p=plot()
plot!(mnog)

mnog=[s for s in zip([0.0,0.0,6.0,6.0,0.0],[0.0,6.0,6.0,0.0,0.0])]
is_norm(mnog)

using Plots
p=plot()
plot!(mnog)