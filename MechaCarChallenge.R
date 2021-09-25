#Deliverable 1
library(dplyr) 

library(tidyverse)
MechaCar_mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_table)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_table))

lm(mpg ~ vehicle_length + ground_clearance, data=MechaCar_mpg_table)
summary(lm(mpg ~ vehicle_length + ground_clearance, data=MechaCar_mpg_table)) 



#Deliverable 2
Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Suspension_Coil_table %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 
lot_summary <- Suspension_Coil_table  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep') 

#Deliverable 3
t.test(Suspension_Coil_table$PSI,mu=1500)
lot1 <- subset(Suspension_Coil_table, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Coil_table, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Coil_table, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)