x <- stats::runif(12);
y <- stats::rnorm(12);
x;y
i <- order(x, y); x <- x[i]; y <- y[i];
i;x;y
?order

 s <- seq(length(x)-1)  # one shorter than data

 arrows(x[s], y[s], x[s+1], y[s+1], col = 1:3)

 s <- s[-length(s)]

 segments(x[s], y[s], x[s+2], y[s+2], col = "yellow")
 
 
 
 x <- seq(0, 10, length.out = 10)
 y <- seq(0, 10, length.out = 10)
 gridResult = expand.grid(x=x,y=y) # this gives some 100 values of x and y
 funcForZtemp <- function(n, m) {cos(n)* sin(m)}
 zTemp = funcForZtemp(gridResult["x"],gridResult["y"]); 
 z= matrix(zTemp$x,nrow=10,ncol=10);
 persp(x, y, z, theta = 135, phi = 30, col = "green", scale = FALSE, ltheta = -120, shade = 0.75, border = NA, box = FALSE)
 #image(x, y, z, xlab = "X", ylab = "Y", col = terrain.colors(10));
 
 # calculate the gradient
 derivativeWrtXY <- deriv(~ sin(x)*cos(y), c("x","y")) ; derivativeWrtXY;
 #gridResult$xVar=x; gridResult$yVar=y;
x= gridResult$x; y = gridResult$y;
slopesDouXdouY = eval(derivative); z=slopesDouXdouY;
 z;
mode(z); class(z)
directionalx <- seq(1, 10, length.out = 30)
directionaly <- seq(1, 10, length.out = 30)
directionaly;directionalx;
funcForUnitVect <- function(dirx,diry) {len=sqrt(dirx^2)+(diry)^2;directx = (x[1:30]*directionalx)/len; directy = (y[1:30]*directionaly)/len; df = data.frame(directx,directy)};
result = funcForUnitVect(directionalx,directionaly)
result
plot(result$directx,result$directy, add=TRUE)
#arrows(result$directx, result$directy, result$directx, result$directy)
#plot3D::lines3D(x=x,y=y,theta = 135, phi = 30, col = "red",add=TRUE);

