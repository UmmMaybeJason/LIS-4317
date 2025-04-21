# Module 13

library(animation)

ani.options(interval = 0.1)

colors <- rainbow(10)

saveGIF({
  
  layout(matrix(c(1, rep(2, 5)), 6, 1))
  
  par(mar=c(4,4,2,1) + 1)
  
  for (i in 1:100) {
    
    chunk <- rnorm(100) + sqrt(abs((i) - 51))
    
    par(fg=1)
    
    plot(-5, xlim = c(1, 100), ylim = c(0, .3), axes = F, main = "Run #")
    abline(v=i, lwd = 5, col = rgb(0, 0, 255, 255, maxColorValue=255))
    abline(v=i-1, lwd = 5, col = rgb(0, 0, 255, 50, maxColorValue=255))
    abline(v=i-2, lwd = 5, col = rgb(0, 0, 255, 25, maxColorValue=255))
    
    axis(1)
    
    
    par(fg = colors[mean(chunk) + 3])
    
    plot(density(chunk), main = "", xlab = "X Value", xlim = c(-5, 15), ylim = c(0, .6))
    
    abline(v=mean(chunk), col = rgb(255, 0, 0, 255, maxColorValue=255))
    if (exists("lastmean")) {
      abline(v=lastmean, col = rgb(255, 0, 255, 0, maxColorValue=255))
      prevlastmean <- lastmean
    }
    if (exists("prevlastmean")) {
      abline(v=prevlastmean, col = rgb(255, 255, 0, 0, maxColorValue=255))
    }
    
    lastmean <- mean(chunk)
  }
})
