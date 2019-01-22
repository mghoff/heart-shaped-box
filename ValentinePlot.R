# Clear Environment
rm(list=ls())

# Install & Load Packages
# install.packages('animation')
library(animation)

# Build Function
i_heart_you <- function(path = "~/Downloads/heart.gif", width = 600, height = 600) {
    # Initialize sequences
    X <- seq(-2, 2, .001) # Set x-axis sequence
    A <- seq(0, 20, .05) # Set amplitude sequence
    
    # Initialize my heart-shaped-box function
    f_x <- function(x, amp = 10) {
        (abs(x)**(2/3)) + 0.9*sin(amp*pi*x)*(((3.3 - x**2))**(1/2))
        }

    # Build GIF
    saveGIF({
        ani.options(interval = 0.05) # Set speed (smaller number is faster)
        for(a in A) {
            plot(f_x(X, a), 
                 col = 'magenta3', 
                 xlab = '', ylab = '',
                 xaxt = 'n', yaxt = 'n')
            legend("bottomright", legend = c("f(x) = Happy Valentine's Day!"), box.lty = 0)
        }
    }, 
    movie.name = path, img.name = "heart", ani.height = height, ani.width = width)
}

# Execute my Heart-Shaped-Box
i_heart_you()
