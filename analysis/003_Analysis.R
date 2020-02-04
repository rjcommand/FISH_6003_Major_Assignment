# FISH 6003: Major Assignment Data Exploration

# Note: 001_DataSetup.R, and 002_Exploration.R must be run prior to this script.

## Research Question

## Visualize the design (Do this outside of R)

## Data exploration already done


### 1. Identify the dependency structure in the data 
  
### 2. Present the statistical model
 
### 3. Fit the full model


### 4. Validate the full model

### 4A. Model-selection and re-validation
  
### 5. Interpret and present numerical output of the model
  
### 6. Create a visual representation of the model
  

### 7. Simulate from the model
  
# Simulation to establish zero-inflation
N <- nrow(MYDATA) #MYDATA
gg <- simulate(MYMOD, 10000) #MYMOD 

zeros <- vector(length = 10000)
for (i in 1:10000){
  zeros[i] <- sum(gg[,i] == 0) / N
}

par(mar = c(5,5,2,2), cex.lab = 1.5)
plot(table(zeros), 
     xlim = c(0, 0.05),
     axes = FALSE,
     xlab = "Percentage of zeros",
     ylab = "Frequency")
axis(2)
axis(1, at = c(0.01, 0.02, 0.03, 0.04, 0.05),
     labels = c("1%", "2%", "3%", "4%", "5%"))     
points(x = sum(MYDATA$MYRESPONSEVARIABLE==0) / N, y = 0, pch = 16, cex = 5, col = 2) #MYDATA and MYRESPONSEVARIABLE

                  
