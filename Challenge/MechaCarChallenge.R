library(dplyr)
mechacar <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = mechacar)
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = mechacar))


# supsension coil analysis code

suspension <- read.csv(file = "Suspension_coil.csv", check.names = F, stringsAsFactors = F)

total_summary <- suspension %>% summarize(PSI) %>% summarize(Mean_PSI = mean(PSI), Median_PSI = median(PSI), Variance_PSI = var(PSI), SD = sd(PSI), .groups = "keep")


lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI = mean(PSI), Median_PSI = median(PSI), Variance_PSI = var(PSI), SD = sd(PSI), .groups = "keep")
