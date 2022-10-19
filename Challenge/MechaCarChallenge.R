library(dplyr)
mechacar <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = mechacar)
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = mechacar))
