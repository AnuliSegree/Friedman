# MoonDataR Package Example Usage
# Author: Anuli Segree

library(MoonDataR)

# Load a built-in dataset
data <- iris

# Step 1: Clean column names
data <- clean_names_simple(data)

# Step 2: Check missing values
missing_report(data)

# Step 3: Summarize the dataset
summarize_data(data)

# Step 4: Create exploratory plots
plot_numeric(data, "sepal_length")
plot_categorical(data, "species")

# Step 5: Create and print an S3 data profile object
profile <- make_data_profile(data)
print(profile)
