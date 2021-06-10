using Plots
points = randpoints(rand, 20)
scatter(points; legend = false) 

typeof(points)