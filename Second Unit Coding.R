# Introduction to Graphs
# In R, graphics means creating visual representations of data — 
# like plots, charts, and diagrams.

# Why graphics?
# Data in numbers is hard to understand.
# A simple plot can reveal patterns, trends, and outliers quickly.

# Core Concepts
# plot() – The most basic plotting function in R.
# title(), xlab(), ylab() – Add titles and labels.
# type parameter – Change plot style: "p" (points), "l" (lines), "b" (both).
# col – Change color.
# pch – Change point symbol.
# barplot() – For bar graphs.
# hist() – For histograms.


# Example 1: Basic line plot
months <- 1:6   # Months from Jan to June
sales <- c(50, 65, 80, 60, 75, 90)  # Sales data in lakhs

plot(months, sales, type="l", col="red", 
     xlab="Month", ylab="Sales (in Thousands)",
     main="Half-Yearly Sales Performance")

# Example 2: Bar plot for rainfall data
rainfall <- c(12, 25, 40, 35, 20, 15)
names(rainfall) <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")

barplot(rainfall, col="red", main="Monthly Rainfall in Punjab",
        xlab="Month", ylab="Rainfall (cm)")

# Example 3: Histogram of marks
marks <- c(45, 55, 60, 70, 65, 75, 80, 50, 55, 90, 85, 78, 72)

hist(marks, col="green", main="Distribution of Student Marks",
     xlab="Marks", ylab="Frequency")

marks<-c(85,90,98,75,81)
names(marks)<-c("Maths","Science","English","Computer","Punjabi")
barplot(marks,col="red",main="Report",xlab="Subjects",ylab="marks")

fruits <- c("Apple", "Banana", "Mango", "Orange", "Grapes")
price  <- c(120, 60, 150, 80, 100)

data <- data.frame(Fruit = fruits, Price = price)
# Bar plot
library(ggplot2)

ggplot(data, aes(x = Fruit, y = Price)) +
  geom_col(fill = "skyblue", color = "black") +
  scale_y_continuous(breaks = seq(0, max(price), length.out = 5)) +  # only 5 values
  labs(title = "Fruit Prices",
       x = "Fruits",
       y = "Price") +
  theme_minimal()


Count <-c(60, 50, 45,30)
names(Count) <- c("CSE", "ECE", "ME", "CIVIL")

barplot(Count, Col=" Green",main = "Number of Students by Department", xlab = "Department",ylab = "Number of Students"
)

population <- c(12, 8, 15, 10)
names(population) <- c("Delhi", "Mumbai", "Kolkata", "Chennai")

barplot(population, col = "purple", main = "Population of Cities",
        xlab = "City", ylab = "Population (in millions)")



Count <- c(25,30,15,10)
names(Count) <-c("Apple","Banana", "Mango","Orange")

barplot(Count,Col="red",main="Fruit count",Xlab="fruit",ylab="count")



# Points to Remember (Graphics Specific)
# type="p" → points, type="l" → lines, type="b" → both (points + lines), type="o" → overplotted lines & points.
# pch changes the shape of plotted points (e.g., pch=16 is solid circle, pch=17 is triangle).
# col can take either a color name ("red") or a number (col=4 is blue).
# main sets the main title, while xlab and ylab label axes.
# barplot() automatically spaces bars — use horiz=TRUE for horizontal bars.
# hist() automatically decides bin widths — control them with breaks= parameter.
# Use par(mfrow=c(r,c)) to plot multiple graphs in the same window.
# Use plot.new() to start a new plot window without closing RStudio.
# The function box() adds a box border around a plot if needed.
# Use legend() to add a legend explaining colors/lines in your graph.


# Matrices and Lists

# In R, data is often stored in structured formats. 
# Two important ones are:
# Matrix → Think of it like a table with rows and columns where all elements are of the same type (all numbers or all characters).
# List → Like a shopping bag that can contain different types of items (numbers, strings, vectors, even other lists).

# Matrix
# Created using matrix() or by binding vectors (cbind(), rbind()).
# All elements must be of the same data type.
# Indexed using [row, column].
# Can have row and column names.

# Example 1: Matrix creation
m <- matrix(c(1,0,0,0,1,0,0,0,1), nrow = 3, ncol = 3)  # 3x3 matrix
print(m)

n <- matrix(1, nrow = 3, ncol = 3)  # 3x3 matrix
print(m)
o <- matrix(0, nrow = 3, ncol = 3)  # 3x3 matrix
print(o)

p <- matrix(1:9, nrow = 3, ncol = 3)  # 3x3 matrix
print(p)

# Adding row and column names
rownames(m) <- c("Row1", "Row2", "Row3")
colnames(m) <- c("Col1", "Col2", "Col3")
print(m)

# Example 2: Accessing Matrix Elements
m[2, 3]       # value in 2nd row, 3rd column
m[ , 2]       # all rows, 2nd column
m[1, ]        # all columns, 1st row

# List
# Created using list().
# Can store different data types together.
# Elements accessed using [[ ]] (by position) or $ (by name).
# Useful for storing mixed results (e.g., model output).

# Example 1: List creation
student <- list(name = "Amit", age = 21,marks = c(80, 85, 78),pass = TRUE)
print(student)

# Example 2: Accessing list elements
student$name      # by name
student[[2]]      # by position

# Points to Remember (New for Matrices & Lists)
# 
# matrix(data, nrow, ncol, byrow=TRUE) fills matrix row-wise; default is column-wise.
# Mixing types in a matrix forces conversion to the most flexible type (e.g., number + string → all strings).
# Lists keep original types of each element without conversion.
# length(matrix) returns total elements; dim(matrix) returns dimensions.
# unlist(list) flattens a list into a vector.
# Use str(object) to quickly see structure of a matrix or list.
# Lists can contain other lists (nested lists).
# In indexing, [ ] returns a sub-list; [[ ]] extracts the actual element.
# cbind() adds columns to a matrix; rbind() adds rows.
# Matrices are great for math; lists are great for storing mixed information.


# Subsetting in R

# Subsetting means selecting a part of an object (vector, matrix, list, dataframe) instead of using the whole data.

# Core Concepts
# Indexing with [ ] – Select elements by position.
# Indexing with [[ ]] – For lists, to extract the actual element.
# Indexing with $ – For named list/dataframe elements.
# Logical Indexing – Use TRUE/FALSE to select elements.
# Negative Indexing – Exclude elements by position.
# Name-based Indexing – Select elements using their names.

# Example 1: Position-based indexing
v <- c(10, 20, 30, 40, 50)
v[2]           # second element → 20
v[c(1, 4)]     # first and fourth elements → 10, 40
v[1:4]         # first to fourth elements → 10,20,30,40

# Negative indexing
v[-3]         # all except third element

# Example 2: Logical indexing
marks <- c(45, 78, 88, 60, 92)
marks[marks > 70]  # returns values greater than 70

# Example 3: Matrix subsetting
m <- matrix(1:9, nrow = 3, ncol = 3)
m[2, 3]   # element in row 2, column 3
m[ , 2]   # all rows, column 2
m[1, ]    # row 1, all columns

# Example 4: List subsetting
student <- list(name = "Ravi", age = 22, marks = c(85, 90, 88))
student$name     # using $
student[["marks"]] # using [[ ]]
student[[3]][2]  # second mark

# Points to Remember 
# Vectors use [ ] for subsetting; lists use both [ ] (returns list) and [[ ]] (returns element).
# $ works for named list or dataframe elements only.
# Logical indexing must have the same length as the object.
# Negative indexing cannot be mixed with positive indexing in the same command.
# Name-based indexing requires exact matching unless ignore.case=TRUE is specified.
# Missing values (NA) in logical indexing will return NA for those positions.
# You can use which() to get positions of elements meeting a condition.
# Subsetting a matrix with one index (like m[2]) treats it as a vector.
# If you want to keep matrix structure when subsetting, set drop=FALSE.
# For dataframes, subset() is a cleaner way to filter rows and columns.

# System-defined functions
# R comes with a huge collection of system-defined (built-in) 
# functions that can perform common tasks without writing code from scratch.

# Core Concepts

# System-defined Functions
# Pre-written functions available in R without needing to define them.
# Examples: sum(), mean(), sqrt(), length(), paste(), plot().
# Save time and reduce errors since they’re already tested.
 
# Help System
# ?function_name – Opens help page for that function.
# help(function_name) – Same as above.
# example(function_name) – Shows examples of usage.
# help.search("keyword") – Finds functions related to a keyword.
# apropos("word") – Lists functions containing that word in their name.

# Example 1: System-defined functions
marks <- c(45, 78, 88, 60, 92)
mean(marks)       # average
max(marks)        # maximum value
which.max(marks)  # position of max value

# Example 2: Help system
?min        # opens help page for mean
help(mean)    # same as above
example(min) # runs examples for mean

# Points to Remember
# R has hundreds of built-in functions across different packages.
# Always check the required arguments of a function before using it.
# args(function_name) shows the function’s parameters.
# str(function_name) can reveal internal structure for some functions.
# methods(class="data.frame") lists functions applicable to dataframes.
# Some functions come from loaded packages only — if not found, load with library().
# Use ??keyword as a shortcut for help.search().
# example() is useful to see function in action without guessing syntax.
# Case sensitivity matters in function names — Mean() is not mean().
# The help system is most effective when R packages are up to date.

#Errors and warnings; coherence of the workspace

# When working in R, sometimes your code doesn’t run as expected.
# 1. Errors → Stop the execution immediately.
# 2. Warnings → The code runs but R is alerting you that something might be wrong.
# Coherence of the workspace means keeping your workspace organized, consistent, and free from conflicting objects or mismatched data types so that your code runs smoothly.


# Core Concepts

# Errors:Happen when the syntax or logic is incorrect.
# Example 1: Error in R
x <- "hello"
sqrt(x)  # Error: non-numeric argument to mathematical function

# Warnings: Do not stop execution but indicate potential issues.
# Example 2: Warning in R
log(-5)  # NaNs produced

# Coherence of Workspace
# Avoid duplicate variable names.
# Remove unused objects to prevent confusion.
# Keep data types consistent.

# Example 3: Checking workspace
ls()         # list all objects
rm(list=ls()) # clear everything for a fresh start

# Points to Remember
# Use class(object) to check the data type before applying functions.
# warnings() shows the last warnings generated.
# options(warn=2) turns warnings into errors (useful for debugging).
# try() allows code to continue even if an error occurs.
# Avoid naming variables after functions (sum, mean).
# Save your workspace before making big changes.
# Always clear unused objects to prevent name conflicts.
# NaN (Not a Number) often appears with invalid math operations.
# Use traceback() after an error to see where it happened.
# Consistent naming and typing help avoid unexpected results.



# Data input and output; interface with other software packages

# Data input means bringing data into R from different sources (files, databases, internet).
# Data output means saving or exporting data from R so it can be used elsewhere.
# R can also interface with other software packages like Excel, SPSS, MySQL, Python, and more-making it versatile for data exchange.

# Core Concepts
# Data Input
# From keyboard → using scan(), readline().
# From text/CSV files → read.table(), read.csv().
# From Excel → packages like readxl, openxlsx.
# From databases → packages like DBI, RMySQL.
# 
# Data Output
# To CSV → write.csv().
# To text files → write.table().
# To Excel → write.xlsx() (with packages).
# Save R objects → save(), save.image().
# 
# Interface with Other Software
# Excel → Import/export using readxl or writexl.
# Python → Use reticulate package.
# SPSS, SAS, Stata → Use haven package.
# Databases → Connect via RODBC or DBI.

# Example 1: Import CSV file
data <- read.csv("students.csv")
head(data)  # view first few rows

# Example 2: Export to CSV
write.csv(data, "output.csv", row.names = FALSE)

# Example 3: Read Excel file
library(readxl)
marks <- read_excel("marks.xlsx")
print(marks)

# Example 4: Database connection (MySQL)
library(DBI)
con <- dbConnect(RMySQL::MySQL(), dbname="school", host="localhost",
                 user="root", password="password")
students <- dbGetQuery(con, "SELECT * FROM student_data")
head(students)
dbDisconnect(con)

# Points to Remember
# read.csv() assumes comma as separator; read.table() lets you define any separator.
# Use stringsAsFactors=FALSE in old R versions to avoid unwanted factor conversion.
# Always check the working directory with getwd() before reading/writing files.
# Set working directory with setwd("path") to avoid full path typing.
# Use na.strings parameter to treat certain values as missing.
# Large files load faster with data.table::fread().
# write.csv() overwrites files without warning — be careful.
# Excel reading requires packages (readxl, openxlsx), not built-in R functions.
# Database connections must be closed after use (dbDisconnect()).
# Interfacing with Python requires installing Python and the reticulate package.


# Good programming practice
# Good programming practice means writing R code that is 
# readable, efficient, error-free, and easy to maintain.
# In academics and industry, clean code is valued because:
# It helps others understand your work.
# It reduces bugs.
# It makes future changes easier.


# Core Concepts

# Readable Code: Use proper indentation and spacing.Give variables meaningful names (student_marks instead of x1).
# Comments:Explain what your code is doing. Use # for single-line comments.
# Avoid Hardcoding:Store frequently used values in variables instead of repeating them.
# Code Reusability: Use functions for repetitive tasks.
# Error Handling: Anticipate and handle potential errors using try() or input checks.
# Testing:Test your code on small datasets before large ones.


# ❌ Poor practice
a <- c(78,85,92,65,88)
m <- mean(a)
print(m)

# ✅ Good practice
marks <- c(78, 85, 92, 65, 88)  # vector of student marks
average_marks <- mean(marks)    # calculate average
print(paste("Average Marks:", average_marks))

# Points to Remember
# Always indent your code for clarity.
# Use snake_case or camelCase for variable names, but be consistent.
# Avoid global variables unless necessary.
# Keep functions short — one task per function.
# Use version control (Git) for team projects.
# Write comments before writing code (helps planning).
# Use stop() to handle invalid input gracefully.
# Test edge cases to ensure code works in all scenarios.
# Keep backups of important scripts.
# Refactor old code regularly to improve quality.

# The parentheses and brackets; =, == and <-
# In R, parentheses and brackets are not just punctuation-they 
# define how code is grouped, how elements are accessed, and 
# how values are assigned.
# Similarly, =, ==, and <- are different operators with different purposes.

# Parentheses()
# Used in functions to pass arguments: mean(x)
# Used in mathematical grouping: (2 + 3) * 4

# Square Brackets[]
# Used for indexing elements: v[2], m[1, 3]
# Used for selecting subsets from vectors, matrices, and dataframes.

# Double Square Brackets[[ ]]
# Used in lists to extract the actual element instead of a sub-list.
# Curly Braces{} – Group multiple statements together (mainly in functions, loops, conditionals).

# Assignment & Comparison
# <- → Assignment operator (preferred in R). Example: x <- 10
# = → Can also assign values but mostly used to name arguments in functions.
# == → Comparison operator (checks equality). Example: 5 == 5 returns TRUE.


# Vector indexing
scores <- c(45, 100, 78, 55)
scores[2]        # 100

# List indexing
player <- list(name="Virat", score=100)
player[[2]]      # 100
player$name      # "Virat"

# Assignment
runs <- 50

# Comparison
runs == 50   # TRUE
runs == 100  # FALSE

# Parentheses for Grouping
(2 + 3) * 4   # 20
2 + (3 * 4)   # 14

# () for functions and grouping.
# [] for indexing, [[ ]] for extracting list elements.
# <- assigns, = mostly for function arguments, == compares.

# Points to Remember
# Use <- instead of = for assignments in scripts (better readability).
# In functions, = is for assigning argument values (mean(x, na.rm=TRUE)).
# Double square brackets [[ ]] return the element, not a sub-list.
# Always use parentheses to control operation order in complex expressions.
# Mixing assignment <- and comparison == is a common beginner mistake.
# [] keeps the data structure, [[ ]] extracts the actual value.
# You can assign values right to left (10 -> x) but it’s rarely used.
# Curly braces {} allow multiple commands to run as one block.
# Parentheses inside conditions are optional but improve clarity.
# For nested indexing (like list[[1]][2]), evaluate inside-out.

# Apply-type functions
# Apply-type functions in R are used to apply a function to elements of data structures like vectors, lists, matrices, or data frames without writing loops manually.
# They make code shorter, cleaner, and faster.

# Core Concepts:The main apply-type functions are:
 
# apply() – Works on matrices or arrays.
# lapply() – Works on lists, returns a list.
# sapply() – Works on lists, returns a vector/matrix if possible.
# tapply() – Works on vectors grouped by factors.
# mapply() – Multivariate version of sapply()
# vapply() – Similar to sapply() but safer (expects a defined output type).


# Example 1: Using apply()
# Sales matrix for 3 stores across 4 months
sales <- matrix(c(20, 15, 30, 25,
                  18, 22, 27, 19,
                  25, 30, 35, 28), nrow=3, byrow=TRUE)
# Row sums (store-wise totals)
apply(sales, 1, sum)
# Column sums (month-wise totals)
apply(sales, 2, sum)

# Example 2: Using lapply() and sapply()
# List of numbers
num_list <- list(a=1:5, b=6:10, c=11:15)
print(num_list)
# lapply returns a list
lapply(num_list, mean)
# sapply returns a vector
sapply(num_list, mean)


# Example 3: Using tapply()
# Marks of students with their section info
marks <- c(85, 70, 90, 60, 78, 88)
section <- factor(c("A", "A", "B", "B", "A", "B"))
# Average marks per section
tapply(marks, section, mean)


# Points to Remember
# apply(X, MARGIN, FUN) → MARGIN = 1 (rows) or 2 (columns).
# lapply() always returns a list, even if results are numeric.
# sapply() tries to simplify to a vector/matrix.
# tapply() is best for grouped operations.
# mapply() applies a function to multiple arguments in parallel.
# Use vapply() when you want to ensure output type consistency.
# Avoid apply functions for extremely large datasets — data.table or dplyr might be faster.
# You can pass custom functions to apply functions using function(x) {...}.
# apply() works element-wise for arrays but not for lists.
# These functions are part of R’s functional programming style.

# Conditional statements

# Conditional statements let your code make decisions-they execute certain commands only if specific conditions are met.
# This allows programs to react differently based on input or data values.

# if statement
if(condition) {
  # code if condition is TRUE
}

if(condition) {
  # code if TRUE
} else {
  # code if FALSE
}

# 3. if...else if...else Chain: 
# Allows multiple conditions to be checked in order.

# 4. ifelse() Function: 
#Vectorized version of if...else for quick inline conditions.


# Example 1: Simple if-else
marks <- 85
if(marks >= 90) {
  print("Grade: A+")
} else {
  print("Grade: A")
}


# Example 2: if...else if...else
marks <- 68
if(marks >= 90) {
  print("Grade: A+")
} else if(marks >= 75) {
  print("Grade: A")
} else if(marks >= 50) {
  print("Grade: B")
} else {
  print("Grade: Fail")
}


# Example 3: Vectorized ifelse()
marks <- c(95, 82, 67, 45)
grades <- ifelse(marks >= 90, "A+", 
                 ifelse(marks >= 75, "A", 
                        ifelse(marks >= 50, "B", "Fail")))
grades

# Points to Remember
# Conditions must return TRUE or FALSE.
# Use & and | for combining multiple conditions.
# Always test boundary values (e.g., exactly 75 marks).
# ifelse() is useful for applying logic to entire vectors.
# Extra spaces and parentheses improve readability.
# Conditions with NA values return NA unless handled.
# Nested ifelse() can get hard to read — use case_when() from dplyr for cleaner code.
# Avoid deeply nested if statements when possible.
# Ensure only one branch executes in an if...else chain.
# Remember that R uses short-circuit evaluation with && and || in scalar comparisons.

# Loops and iterations
# Loops and iterations allow you to repeat a set of instructions multiple times.
# They are essential when you want to process multiple items in a dataset without writing the same code over and over.


# Core Concepts
# for Loop: Repeats a block of code for each element in a sequence.
# while Loop: Repeats a block of code while a condition is TRUE.
# repeat Loop: Runs indefinitely until a break statement is encountered.

# Loop Control Statements:
# break → exits the loop immediately.
# next → skips the current iteration and moves to the next.


# Example 1: for Loop
# Print multiplication table of 5
for(i in 1:10) {
  print(paste("5 x", i, "=", 5 * i))
}

# Example 2: while Loop
count <- 1
while(count <= 5) {
  print(paste("Count is:", count))
  count <- count + 1
}

# Example 3: repeat Loop with break
num <- 1
repeat {
  print(num)
  num <- num + 1
  if(num > 5) {
    break
  }
}

# Points to Remember
# Use for loops for fixed repetition counts.
# while loops are best for conditions that depend on changing values.
# repeat must have a break to stop execution.
# next skips only the current iteration.
# Be careful of infinite loops in while and repeat.
# Vectorized functions are often faster than loops in R.
# Loop variables can be named anything, but keep them meaningful.
# You can nest loops inside each other for multi-level processing.
# Preallocate vectors for efficiency inside loops.
# Combine loops with if statements for conditional processing.

# Compiling and applying functions
# In R, you can write your own functions to perform specific tasks.
# Once written, you can apply these functions to data — just like you use built-in functions such as mean() or sum().
# “Compiling” in R usually means preparing your code (functions) for efficient execution — though R is interpreted, certain functions can be optimized.

# 1.Defining a Function
my_function <- function(arg1, arg2) {
  # code
  return(result)
}

# 2.Calling a Function: Just type its name with arguments: my_function(5, 10)
# 3.Scope: Variables created inside a function are local to it.
# 4.Compiling for Speed: Use compiler::cmpfun() to compile a function for faster performance.
# 5.Applying Functions: Use your custom function with apply(), lapply(), etc.

# Example 1: Function to calculate GST
calculate_gst <- function(amount, rate=18) {
  gst <- amount * rate / 100
  return(gst)
}
calculate_gst(1000)    # 180
calculate_gst(5000, 12) # 600

# Example 2: Applying Function with apply()
# Custom function to find square
square <- function(x) { return(x^2) }

numbers <- c(2, 4, 6)
sapply(numbers, square)  # 4 16 36

# Example 3: Compiling a Function
library(compiler)
fast_square <- cmpfun(square)
sapply(numbers, fast_square)

# Points to Remember
# Function names follow same rules as variable names.
# Arguments can have default values.
# Use return() to send back a result — last expression is also returned automatically.
# Local variables inside functions don’t affect the global workspace unless explicitly assigned.
# Pass extra arguments using ... (ellipsis).
# Document your functions with comments or roxygen2 for packages.
# cmpfun() from compiler package can make functions faster.
# Avoid writing very large functions — break into smaller ones.
# Test functions on sample data before applying to big datasets.
# Save useful functions in a script file and source() it when needed.

# Documentation in R
# Documentation in R means providing clear descriptions of code, functions, and datasets so that others (and your future self) can understand and use them easily.
# It is a key part of good programming practice and is essential when sharing code or creating R packages.

# Core Concepts

# 1.In-code Comments: 
# Use # for single-line comments.
# Explain purpose, logic, and important variables.

# 2.Function Documentation:
# Describe what the function does, its arguments, and return values.
# Example:
   
   # Function to calculate square
   # Arguments: x - numeric value
   # Returns: square of x
   
 
# 3.Dataset Documentation: Describe source, structure, and meaning of variables.

# 4.Package Documentation:
# Written using Roxygen2 style for package functions.
# Generates .Rd files that appear in the help system.
 
# 5.External Documentation:
# README files, reports, or PDF manuals.


# Example 1: Documenting in Code
# Program: Student Grade Calculator
# This program calculates average marks and assigns grades.
# Input marks
marks <- c(85, 78, 92, 66, 59)
# Calculate average
average_marks <- mean(marks)  # mean() returns average
# Output result
print(paste("Average Marks:", average_marks))


# Points to Remember:
# Comments should explain intent, not obvious code.
# Keep comments updated — outdated documentation is harmful.
# Roxygen2 (#') is used for package documentation.
# Use @param, @return, @examples in Roxygen2 for clarity.
# Maintain a README file for large projects.
# Document data sources and transformations in analysis projects.
# Use help(package="pkgname") to see package documentation.
# Avoid over-commenting — balance detail with brevity.
# Include examples in documentation to help users.
# Follow consistent documentation style across all scripts.










