x <- seq(0, 10, length.out = 3)
y <- seq(0, 10, length.out = 5)
d1 <- expand.grid(x = x, y = y)
x;y;d1;
cosvalue=cos(d1["x"]);cosvalue
d2 <- expand.grid(x = x, y = y, KEEP.OUT.ATTRS = FALSE);
object.size(d1) - object.size(d2)

# First Question starts here. plot a perspective 3d gaph with some random x and y values, using expand.grid to feed the perspective plot 
#Generate a random gid of x,y and prepare the grid values.
# then we will send these values to the function f(x,y) = cos(x)*sin(y) = Z. 
#store the return of f() in to Z, as stated above
# The persp, ?persp, tells you that it takes x,y(your inputs to function f) and Z (your resultant of f(x,y), and limit, etc..)
# use various args in the persp(), to draw a 3-D plot.
# Now, getting in to the action
x <- seq(0, 10, length.out = 10)
y <- seq(0, 10, length.out = 10)
gridResult = expand.grid(x=x,y=y) # this gives some 100 values of x and y
gridResult
class(gridResult) # its a dataframe, so accessing it as gridResult["x"] will give a data frame. But,
# if you want to retrieve the values as vectors use, $ sign, gridResult$x , or gridResult[,1]
#mode(gridResult[,1]); class(gridResult[,1])

#The grid columns can be accessed using the gridResult["name of column"]
#example("persp"), it helps you to write a function and how to use it in the persp()
funcForZtemp <- function(n, m) {cos(n)* sin(m)}
# calculate Z for persp using the function created above
zTemp = funcForZtemp(gridResult["x"],gridResult["y"]); 
z= matrix(zTemp$x,nrow=10,ncol=10);
# now we got the z, and we are good to plot the perspective using the x,y,z over some x,y,z limited range.
# lets draw a perspective, example("persp") helps.
#par(mfrow=c(1,2));

persp(x, y, z, theta = 135, phi = 30, col = "green", scale = FALSE, ltheta = -120, shade = 0.75, border = NA, box = FALSE)


# question 2.




