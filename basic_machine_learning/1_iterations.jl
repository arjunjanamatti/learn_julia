
function squares(x)
    return x^2
end

squares_vector = []

for x in 1:10
    # push! will insert items to end of container
    push!(squares_vector,squares(x))
end

squares_vector

# below is example like list comprehension
squares_vector_comprehension = [squares(x) for x in 1:10]

# similarly we get the results using map
map(x -> squares(x), 1:10)

# other method
(1:10).^2

# generating random numbers in comprehension
random_comprehension = [rand() for x in 1:10]