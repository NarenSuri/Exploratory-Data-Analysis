
x <- seq(0, 10, length.out = 50)
y <- seq(0, 10, length.out = 50)

x = seq(-2*pi, 2*pi, length.out = 50)
# define the x range values
y = x
gridResult = expand.grid(x=x,y=y) # this gives some 100 values of x and y

funcForZtemp <- function(n, m) {cos(n)* sin(m)}
zTemp = funcForZtemp(gridResult["x"],gridResult["y"]); 

z= matrix(zTemp$x,nrow=50,ncol=50);
#persp(x, y, z, theta = 135, phi = 30, col = "green", scale = FALSE, ltheta = -120, shade = 0.75, border = NA, box = FALSE)
image(x, y, z, xlab = "X", ylab = "Y", col = terrain.colors(10))

# Now the second queston - directional gradient for the data above
# calculate the gradient
derivativeWrtXY <- deriv(~ sin(x)*cos(y), c("x","y")) ; derivativeWrtXY;

slopesDouXdouY = eval(derivativeWrtXY); zz=slopesDouXdouY;
zz;
mode(zz); class(zz);
# convert to matrix 
matrixNotationOfSlopes = matrix(z, nrow = 50, ncol = 50)
mode(matrixNotationOfSlopes); class(matrixNotationOfSlopes)
# now draw the contour plot to the data we have.
contour(x, y, z,add=TRUE)

# now lets handle arrows
arrox = seq(-3, 3, length.out = 10)
arroy = arrox;
arrowslist = expand.grid(arrox, arroy)
arrowslist
# grid values to plot the gradient

arroderivativeWrtmn <- deriv(~ sin(m)*cos(n), c("m","n")) ; arroderivativeWrtmn;
m= arrowslist$Var1; n = arrowslist$Var2;
ArroSlopesDouMdouN = eval(arroderivativeWrtmn); zz=ArroSlopesDouMdouN
# we have to draw an arrow line from x,y to x1,y1. This x1,y1 is the tip of the arrow
ArroTip = zz+arrowslist;
AroTipX=ArroTip$Var1;AroTipY=ArroTip$Var2;
ArrostartX=arrowslist$Var1; ArrostartY = arrowslist$Var2
arrows(ArrostartX, ArrostartY,AroTipX, AroTipY)

