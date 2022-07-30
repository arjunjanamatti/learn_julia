
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

rand(2,3)


function check(x)
    if x > 100
        return sqrt(x)
    else
        return x
    end
end

[check(x) for x in 0:50:200]


using Pkg
Pkg.add("Distributions")
Pkg.add("CairoMakie")
using Distributions
using CairoMakie


N = 10000
random_normal_samples = rand(Normal(),N)
random_normal_samples = random_normal_samples.^2

g = fit(Gamma, random_normal_samples)

CaioMakie.activate(type="svg")

f(x) = pdf(g,x)
xs = 0:0.1:4
ys = f.(xs)
lines(xs, ys)
histl(random_normal_samples, normalization=:pdf, bins=40, alpha=0.4)
current_figure()