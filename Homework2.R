#Abhishek Sharma

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution


#Profit
profit <- revenue - expenses
profit


#Profit After Tax
profitaftertax <- profit*(1-30/100)
profitaftertax


#Profit Margin
profitmargin <- profitaftertax/revenue
round(profitmargin, digits = 2)


#Good Months
average <- mean(profitaftertax)
round(average, digits = 2)
average
for (goodmonths in profitaftertax)
  if(goodmonths > average){
    print(goodmonths)
     round(goodmonths, digits = 2)
  }

#Bad Months
for (badmonths in profitaftertax)
  if(badmonths < average){
    print(badmonths)
     round(badmonths, digits = 2)
  }

#The Best Month
best <- max(profit)
round(best, digits = 2)


#The Worst Month
worst <- min(profit)
round(worst, digits = 2)
