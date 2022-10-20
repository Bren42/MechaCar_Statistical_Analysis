library(dplyr)
mechacar <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

lm(mpg ~ vehicle_weight + spoiler_angle + vehicle_length + ground_clearance + AWD, data = mechacar)

summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length, data = mechacar))


# supsension coil analysis code

suspension <- read.csv(file = "Suspension_coil.csv", check.names = F, stringsAsFactors = F)

total_summary <- suspension %>% summarize(PSI) %>% summarize(Mean_PSI = mean(PSI), Median_PSI = median(PSI), Variance_PSI = var(PSI), SD = sd(PSI), .groups = "keep")


lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI = mean(PSI), Median_PSI = median(PSI), Variance_PSI = var(PSI), SD = sd(PSI), .groups = "keep")


# T Test analysis

t.test(suspension$PSI, mu = 1500)

# t test of PSI per manufacturing lot
Lot_1 <- subset(suspension, Manufacturing_Lot == "Lot1")

Lot_2 <- subset(suspension, Manufacturing_Lot == "Lot2")

Lot_3 <- subset(suspension, Manufacturing_Lot == "Lot3")

t.test(Lot_1$PSI, mu = 1500)

t.test(Lot_2$PSI, mu = 1500)

t.test(Lot_3$PSI, mu = 1500)