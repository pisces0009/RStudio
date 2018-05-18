
#PRASAD KALE
############################################################################################################
# revenue :R
#Expenses :E
#profit   :P
#profitAfterTex:PAT


R <- c(41567.26, 26453.46, 24536.76, 4758.78, 26347.87, 3527.34, 4300.21, 3230.32, 9876.54, 33333.33, 34343.34, 27896.34)
E <- c(34528.56, 17644.18, 25436.23, 10000.10, 4000.40, 2345.67, 1234.56, 6600.66, 10000.45, 22222.22, 10456.11, 2348.32)


#Profit for each month
P <- R - E
P


#Profit after tax for each month 
PAT <- P*(1-30/100)
PAT


#Profit margin for each month 
#profit margin:>PM

PM <- PAT/R
round(PM, digits = 2)


#Good Months
#good month:>GM

average <- mean(PAT)
round(average, digits = 2)
average
for (GM in PAT)
  if(GM > average)
  {
    print(GM)
     round(GM, digits = 2)
  }

#Bad Months
#badmonths:>BM

for (BM in PAT)
  if(BM < average)
  {
    print(BM)
     round(BM, digits = 2)
  }

#The Best Month

bestmnt <- max(P)
round(bestmnt, digits = 2)


#The Worst Month

worstmnt <- min(P)
round(worstmnt, digits = 2)

