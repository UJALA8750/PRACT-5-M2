# Load dataset
df <- read.csv("C:/Users/IT-30/Downloads/DATASETS/retail_sales_dataset.csv",
               stringsAsFactors = FALSE)

# Check column names
colnames(df)

# Convert Total Amount to numeric
df$Total.Amount <- as.numeric(df$Total.Amount)

# Keep only relevant columns
df_clean <- df[!is.na(df$Total.Amount) & df$Gender %in% c("Male","Female"), 
               c("Gender","Total.Amount")]

# Check number of observations per group
table(df_clean$Gender)

# Independent Two-Sample t-Test
t_test_result <- t.test(Total.Amount ~ Gender, data = df_clean)

# Print results
print("Independent Two-Sample t-Test: Total Amount ~ Gender")
print(t_test_result)

