set.seed(123)  # for reproducibility

# Generate patient IDs
patient_ids <- paste("Patient", 1:100)

# Generate ages
ages <- sample(20:80, 100, replace = TRUE)

# Generate genders
genders <- sample(c("Male", "Female"), 100, replace = TRUE)

# Create data2
data2 <- data.frame(Patient = patient_ids, Age = ages, Gender = genders)

# Write data2 to a file
write.table(data2, "Response2Drug.txt", row.names = FALSE, quote = FALSE, sep = "\t")