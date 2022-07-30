
function squares(x)
    return x^2
end

squares_vector = []

for x in 1:10
    # push! will insert items to end of container
    push!(squares_vector,squares(x))
end

squares_vector