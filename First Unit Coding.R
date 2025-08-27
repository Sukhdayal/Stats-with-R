# <- → Standard in R (recommended)
# = → Works but less preferred in code (more common for function arguments)
# x<-5 means putting 5 in x
# x->5 means putting x in 5(not possible)
# so 5-> x is true in this case

# Program 1: Basic Arithmetic in R 
# Objective: Use R like a calculator

10 + 5  # Addition
10 - 5  # Subtraction
10 * 5  # Multiplication
10 / 5  # Division
10 ^ 2  # Exponent (10 squared)
10 %% 3  # Modulus (Remainder when 10 divided by 3)

# Points to Remember:
# 1. Use R as a calculator for quick computations without creating variables.
# 2. Standard arithmetic operators:
#    + (Addition), - (Subtraction), * (Multiplication), / (Division),
#    ^ or ** (Exponent), %% (Modulus), %/% (Integer Division).
# 3. R follows the BODMAS rule for operation order.
# 4. You can use parentheses () to control calculation priority.
# 5. The assignment operator <- is recommended for storing results in variables.
# 6. Use comments (#) to explain code; R ignores everything after #.
# 7. Press Ctrl+Enter in RStudio/VS Code to run selected code lines.
# 8. Use Ctrl+L to clear the console without restarting the session.


# Program 2: Using Variables (Objects)
# Objective: Store and use values like in a small computing program
# Assigning values to objects
x <- 20
y <- 8

# Performing operations on variables
sum_result <- x + y
product_result <- x * y

# Printing the results
print(sum_result)
print(product_result)

# Points to Remember:
# 1. Variable names must start with a letter, not a number, and cannot have spaces.
# 2. R is case-sensitive: myVar and Myvar are different objects.
# 3. Use print() to explicitly show output, or just type the object name in console.
# 4. Variables remain in memory until you remove them with rm(varname).
rm(x)  # removing x from the memory
# 5. Use ls() to see all objects currently in your workspace.
ls()   # seeing all the objects in our workspace
#    [1] → First element of the vector on this line.
#    [3] → Third element of the vector (since "x" is the 3rd in order).
# 6. To clear all objects, run rm(list = ls()).
rm(list = ls())  # clearing all objects in our workspace


# Data Types in R
# R has several basic (atomic) data types that everything else builds upon.
# Numeric: Default type for numbers in R.
# Includes both integers and real (decimal) numbers.
# Example: 3.5, 4

# Character (String / Words)
# Text values in quotes (" " or ' ').
# Example: "Hello", 'R programming'
# Special case: If you mix numbers with characters in a vector, R will coerce all to character.

# Logical
# Boolean values: TRUE or FALSE (short form: T and F).
# Can be the result of comparisons: 5 > 3 → TRUE.
# Special case: Logical values can behave like numbers (TRUE → 1, FALSE → 0) in calculations.

# Exceptional / Important Points
# Coercion rules: When combining different data types in the same object (vector, list, etc.), R automatically converts them to the most flexible type (logical → integer → numeric → character).
# NA (Not Available) can appear in any data type — numeric NA, character NA, logical NA, etc.
# Everything in R is vectorized — even a single number is treated as a vector of length 1.

# Arithmetic operations
a <- 15
b <- 4

add_result <- a + b    # Addition
sub_result <- a - b    # Subtraction
mul_result <- a * b    # Multiplication
div_result <- a / b    # Division
exp_result <- a ^ b    # Exponent (a raised to power b)

print(add_result)
print(sub_result)
print(mul_result)
print(div_result)
print(exp_result)

# Integer division and modulus
int_div <- a %/% b     # Integer division (quotient only)
remainder <- a %% b    # Modulus (remainder)

print(int_div)
print(remainder)

# Type conversions
num_value <- 7.8
class(num_value)
int_value <- as.integer(num_value)  # Converts to integer (truncates decimal part)
class(int_value)
back_to_num <- as.numeric(int_value)  # Converts integer back to numeric (double)
class(back_to_num)

print(int_value)
print(back_to_num)

# Type checking
print(is.numeric(num_value))  # TRUE
print(is.integer(num_value))  # FALSE
print(is.integer(int_value))  # TRUE

# Points to Remember
# %/% performs integer division and returns only the quotient.
# %% returns the remainder from division.
# a / b always returns a floating-point (double) value, even if divisible evenly.
# Use as.integer() to convert a number to integer — it truncates, not rounds.
# Use as.numeric() to convert other types (integer, character) into numeric doubles.
# is.numeric() is TRUE for both integers and doubles, while is.integer() is TRUE only for actual integer type objects.
# Adding L to a number (e.g., 7L) creates an integer directly.
# In mixed-type arithmetic (e.g., integer + double), R automatically coerces to the more general type (numeric double).
# Integer overflow in R produces an NA with a warning — rare, but possible in large computations.
# Modulus (%%) can also work with negative numbers; the sign of the result matches the divisor.

# Rounding functions
num <- 7.567

rounded_value <- round(num, 2)    # Round to 2 decimal places
ceiling_value <- ceiling(num)     # Round up to nearest integer
floor_value <- floor(num)         # Round down to nearest integer
truncated_value <- trunc(num)     # Remove decimal part (towards zero)
signif_value <- signif(num, 2)    # Round to 2 significant digits

print(rounded_value)
print(ceiling_value)
print(floor_value)
print(truncated_value)
print(signif_value)

# Numeric sequences
seq1 <- 1:5                       # Sequence from 1 to 5
seq2 <- seq(1, 10, by = 2)         # Sequence with step size
seq3 <- seq(0, 1, length.out = 5)  # Sequence with fixed number of elements

print(seq1)
class(seq1)
print(seq2)
print(seq3)

# Points to Remember (Unique for This Program)
# 1. round(x, n) rounds to n decimal places, using “round half to even” method (banker’s rounding).
# 2. ceiling() always rounds up to the nearest integer, regardless of decimal value.
# 3. floor() always rounds down to the nearest integer.
# 4. trunc() removes the decimal part, moving toward zero.
# 5. signif(x, n) keeps n significant digits — useful for scientific notation.
# 6. 1:5 creates an integer sequence from 1 to 5 (step of 1).
# 7. seq(from, to, by) generates sequences with a custom step size.
# 8. seq(from, to, length.out = n) generates n evenly spaced values between from and to.
# 9. Sequences can work backwards — e.g., 5:1 gives 5 4 3 2 1.
# 10. Mixing integer and double in sequences results in a numeric (double) sequence.

# 1. Creating character strings
word1 <- "Hello"
word2 <- 'R Programming'  # Single quotes also work
word3 <- "123"             # Even numbers in quotes are treated as text

print(word1)
print(word2)
print(word3)

# 2. Combining strings
combined1 <- paste(word1, word2)             # Adds a space by default
combined2 <- paste(word1, word2, sep = ", ") # Custom separator
combined3 <- paste0(word1, word2)            # No space between strings

print(combined1)
print(combined2)
print(combined3)

# 3. Measuring string length
len1 <- nchar(word1)       # Counts characters in the string
len2 <- nchar(word2)
len3 <- nchar(combined3)

print(len1)
print(len2)
print(len3)

# Points to Remember (Unique for This Program)
# 1. Strings in R can be enclosed in single (' ') or double (" ") quotes — both work.
# 2. Even numbers in quotes are treated as text, not numeric.
# 3. paste() joins strings with a space by default; use 'sep' to change the separator.
# 4. paste0() joins strings without any separator.
# 5. paste() and paste0() can handle multiple arguments at once.
# 6. nchar() returns the number of characters, including spaces.
# 7. Character strings are stored internally as type "character".
# 8. Mixed types in a vector will be coerced to character if any element is character.
# 9. NA values in paste() will produce "NA" unless you handle them with na.rm or special logic.
# 10. In R, there is no separate 'char' type like in C — all text is stored as a character vector.


# 4. Type conversion to character
num_value <- 123
log_value <- TRUE

char_num <- as.character(num_value)   # Converts number to text
char_log <- as.character(log_value)   # Converts logical to text

print(char_num)
print(char_log)
print(typeof(char_num))               # "character"
print(typeof(char_log))               # "character"

# 5. Extracting substrings
text <- "R Programming Language"
sub1 <- substr(text, start = 1, stop = 1)     # First character
sub2 <- substr(text, start = 3, stop = 13)    # Characters from 3rd to 13th
sub3 <- substr(text, start = 15, stop = nchar(text)) # From position 15 to end

print(sub1)
print(sub2)
print(sub3)

# 6. Changing case
upper_text <- toupper(text)  # Convert to uppercase
lower_text <- tolower(text)  # Convert to lowercase

print(upper_text)
print(lower_text)

# Points to Remember (Unique for This Program)
# 1. as.character() changes numbers or logicals into text form.
# 2. Once converted to character, values behave as strings, not numbers.
# 3. substr(x, start, stop) extracts a part of a string based on position.
# 4. nchar() can be used with substr() to get till the end dynamically.
# 5. substr() can also be used to replace part of a string by assignment.
# 6. toupper() converts all letters to uppercase; tolower() converts to lowercase.
# 7. Case conversion functions only affect letters, not numbers or symbols.
# 8. If you apply toupper() or tolower() on NA, it stays NA.
# 9. Converting logical TRUE/FALSE to character results in "TRUE" / "FALSE".
# 10. Character comparison in R is case-sensitive unless transformed to a common case.

# Logicals in R
# 1. Creating logical values
log1 <- TRUE
log2 <- FALSE
log3 <- T       # Short form for TRUE (avoid overwriting T or F)
log4 <- F       # Short form for FALSE

print(log1)
print(log2)
print(log3)
print(log4)

# 2. Logical comparisons
x <- 10
y <- 20

comp1 <- x > y     # Greater than
comp2 <- x < y     # Less than
comp3 <- x == y    # Equal to
comp4 <- x != y    # Not equal to
comp5 <- x >= 10   # Greater than or equal to
comp6 <- y <= 15   # Less than or equal to

print(comp1)
print(comp2)
print(comp3)
print(comp4)
print(comp5)
print(comp6)

# 3. Logical operators
cond1 <- (x > 5) & (y > 15)   # AND (both TRUE)
cond2 <- (x > 5) | (y > 25)   # OR (at least one TRUE)
cond3 <- !(x > 5)             # NOT (reverses logical value)

print(cond1)
print(cond2)
print(cond3)

# 4. Checking type
print(is.logical(log1))   # TRUE
print(is.logical(x))      # FALSE (x is numeric)

# 5. Coercion between logical and numeric
num_from_log <- as.numeric(TRUE)   # TRUE → 1
log_from_num <- as.logical(0)      # 0 → FALSE, non-zero → TRUE

print(num_from_log)
print(log_from_num)

# Points to Remember (Unique for This Program)
# 1. TRUE and FALSE are full logical constants; T and F are short forms but can be overwritten.
# 2. Comparison operators return logical values (TRUE/FALSE).
# 3. & (AND) and | (OR) are vectorized; for single condition checks, && and || check only the first element.
# 4. ! negates a logical value.
# 5. Logical expressions can be stored in variables like any other data type.
# 6. is.logical(x) checks if an object is of logical type.
# 7. Logical values can be coerced to numbers: TRUE → 1, FALSE → 0.
# 8. Numeric values can be coerced to logical: 0 → FALSE, non-zero → TRUE.
# 9. In arithmetic with logicals, TRUE acts as 1 and FALSE as 0.
# 10. Logical operations are vectorized; comparisons on vectors are done element-wise.

# Missing Values (NA) in R
# 1. Creating missing values
val1 <- NA
vec <- c(1, 2, NA, 4, 5)

print(val1)
print(vec)

# 2. Checking for missing values
check_na1 <- is.na(val1)     # TRUE
check_na2 <- is.na(vec)      # Vectorized check

print(check_na1)
print(check_na2)

# 3. Arithmetic with NA
sum_with_na <- sum(vec)                  # Returns NA
sum_without_na <- sum(vec, na.rm = TRUE) # Ignores NA values

print(sum_with_na)
print(sum_without_na)

# 4. Replacing NA values
vec_no_na <- vec                         # Copy of vector
vec_no_na[is.na(vec_no_na)] <- 0         # Replace NA with 0

print(vec_no_na)

# 5. NA in logical and character vectors
log_vec <- c(TRUE, NA, FALSE)
char_vec <- c("R", NA, "Data")

print(is.na(log_vec))
print(is.na(char_vec))

# Points to Remember (Unique for This Program)
# 1. NA represents a missing value in R and can appear in any data type (numeric, character, logical).
# 2. is.na(x) returns TRUE for NA elements and FALSE otherwise; it is vectorized.
# 3. Arithmetic with NA produces NA unless you explicitly remove or handle it.
# 4. Use na.rm = TRUE in functions like sum(), mean(), min(), max() to ignore NA values.
# 5. NA is not the same as NULL; NA means “missing”, NULL means “does not exist”.
# 6. NA is also different from NaN (Not a Number); NaN is the result of undefined numeric operations (e.g., 0/0).
# 7. You can replace NA by indexing: x[is.na(x)] <- value.
# 8. For multiple NAs, replacement is vectorized; all NA positions are updated in one step.
# 9. NA propagates in most operations, so handle it before analysis.
# 10. Use complete.cases() to filter rows in data frames that have no missing values.


# Vectors and Their Attributes in R
# 1. Creating vectors
num_vec <- c(10, 20, 30, 40, 50)          # Numeric vector
char_vec <- c("Apple", "Banana", "Cherry") # Character vector
log_vec <- c(TRUE, FALSE, TRUE)            # Logical vector

print(num_vec)
print(char_vec)
print(log_vec)

# 2. Naming vector elements
names(num_vec) <- c("A", "B", "C", "D", "E")  # Assign names
print(num_vec)

# Checking names
print(names(num_vec))

# 3. Checking vector length
len_num <- length(num_vec)
len_char <- length(char_vec)

print(len_num)
print(len_char)

# 4. Checking data type
print(typeof(num_vec))   # "double"
print(typeof(char_vec))  # "character"
print(typeof(log_vec))   # "logical"

print(class(num_vec))    # Higher-level type info

# 5. Accessing attributes
print(attributes(num_vec))  # Shows attributes like names

# Points to Remember (Unique for This Program)
# 1. Vectors in R are one-dimensional collections of elements of the same data type.
# 2. Use c() to create a vector by combining elements.
# 3. names() assigns or retrieves names of vector elements.
# 4. Named vectors allow element access by name instead of index.
# 5. length() returns the number of elements in a vector.
# 6. typeof() shows the internal storage mode (e.g., "double", "character").
# 7. class() shows the high-level type or object class.
# 8. attributes() returns metadata like names, dimensions, etc.
# 9. All elements of a vector must be of the same type; R will coerce mixed types.
# 10. Logical, numeric, and character vectors are the most common in practice.


# Program typeof() in R: Internal Storage Types with Examples

# 1) Numeric (double) vs Integer (explicit with L)
num_default <- 5            # whole number, but stored as double
int_explicit <- 5L          # explicit integer using L

print(typeof(num_default))   # "double"
print(class(num_default))    # "numeric"

print(typeof(int_explicit))  # "integer"
print(class(int_explicit))   # "integer"

# 2) Complex numbers
z <- 4 + 3i
print(typeof(z))             # "complex"
print(Re(z)); print(Im(z));  # real and imaginary parts

# 3) Logical values
flag <- TRUE
print(typeof(flag))          # "logical"
print(as.numeric(flag))      # 1 (coercion to numeric)

# 4) Character (strings)
txt <- "123"
print(typeof(txt))           # "character"
print(as.numeric(txt))       # 123 (numeric coercion works for numeric-looking text)

# 5) Raw (bytes) — low-level
raw_A <- charToRaw("A")
print(raw_A)                 # 41 (hex)
print(typeof(raw_A))         # "raw"

# 6) List (can hold mixed types)
my_list <- list(10, "R", TRUE, 2+0i)
print(typeof(my_list))       # "list"
print(class(my_list))        # "list"

# 7) Function objects are "closure"
print(typeof(mean))          # "closure"
print(class(mean))           # "function"

# 8) NULL vs NA (existence vs missing)
print(typeof(NULL))          # "NULL"
miss <- NA
print(typeof(miss))          # "logical" (base NA prints as logical NA)
# Note: there are typed NAs too, e.g., NA_real_, NA_integer_, NA_character_

# 9) Coercion demos
mix_vec <- c(1L, 2.5, TRUE)  # logical -> integer -> numeric (double)
print(mix_vec)               # all become double
print(typeof(mix_vec))       # "double"

# 10) Integer vs double precision note
print(.Machine$integer.max)  # largest integer (32-bit) R uses for integer type
x <- 2^53
print(x == (x + 1))          # TRUE due to double precision limit (~53 bits)

# Points to Remember (Unique for This Program)
# 1. typeof() shows the low-level storage: "double", "integer", "logical", "complex", "character", "raw", "list", "closure", "NULL".
# 2. class() is a higher-level label used by R’s method system (e.g., "numeric" covers both integer and double).
# 3. Plain numbers like 5 are stored as "double" by default; use L (5L) or as.integer() for true integers.
# 4. Complex numbers store two doubles internally (real and imaginary): typeof(4 + 3i) is "complex".
# 5. Base NA prints as a logical NA; typed NAs also exist: NA_real_, NA_integer_, NA_character_.
# 6. Coercion in mixed vectors follows: logical → integer → double → character (to avoid data loss).
# 7. as.numeric("123") works (returns 123), but as.numeric("abc") gives NA with a warning.
# 8. Raw vectors store bytes; use charToRaw() and rawToChar() to convert between text and raw.
# 9. Functions are objects too: typeof(mean) is "closure"; you can store functions in variables or lists.
# 10. Double precision (~53 bits) means very large integers can’t be exactly represented: (2^53 + 1) == 2^53 is TRUE.
# 11. typeof(list(...)) is "list" even if elements are different types; lists are heterogeneous containers.
# 12. Use typeof() when you care about memory/storage, and class() when you care about how R will treat the object in functions.

# System-defined vs User-defined Objects in R
# 1) User-defined objects: you create them in your workspace (Global Environment)
a <- 10
greeting <- "Hello R"
nums <- c(1, 2, 3, 4, 5)

print(a)
print(greeting)
print(nums)

# 2) System-defined objects: come from base R/packages (available without you creating them)
print(pi)           # built-in constant (~3.141593)
print(letters[1:5]) # built-in vector of lowercase letters
print(month.name[1:3])  # built-in month names

# 3) Checking what something is (function or not)
print(is.function(mean))  # TRUE (system-defined function from base)
print(typeof(mean))       # "closure" (functions are closures)
print(args(mean))         # see function’s arguments

# 4) Where do functions/objects live? (high-level view)
print(search())  # search path of attached packages/environments

# 5) Masking pitfall: overwriting a system name by accident
mean <- 100         # BAD PRACTICE: user object named 'mean'
print(mean)         # now 'mean' is a number, not a function
# mean(nums)        # would error now, because mean is no longer a function

# 6) Resolving masking: use package::function to call the original
print(base::mean(nums))   # still works by explicitly calling base::mean

# 7) Cleaning up the masked name to restore original function
rm(mean)                  # remove the user-defined 'mean'
print(is.function(mean))  # TRUE again (restored system-defined function)

# 8) Checking existence, creating and retrieving by name (useful in scripts)
print(exists("a", envir = .GlobalEnv))  # TRUE (a exists in the global env)
assign("z", 99)                         # create an object by name
print(get("z"))                         # retrieve by name
rm("z")

# 9) Listing a lot of built-in names (just to explore)
# builtins()    # uncomment to view many built-in function names (long output)

# 10) Help and documentation (works in interactive sessions)
# ?mean         # open help for 'mean' in your Help pane
# help("pi")    # open help for 'pi'



# Accessing Data with data()
# 1) Listing all available datasets in current R session (base + loaded packages)
data()  # Opens dataset list in console/help pane

# 2) Loading a built-in dataset by name
data(mtcars)      # Loads the 'mtcars' dataset into workspace
print(head(mtcars))  # View first 6 rows

# 3) Checking details of a dataset
?mtcars           # Opens documentation with description, source, and variables
help(mtcars)      # Same as above

# 4) Loading a dataset from a specific package without attaching the whole package
data("iris", package = "datasets")  # Loads 'iris' dataset from datasets package
print(head(iris))

# 5) Confirming if dataset is loaded
print(exists("mtcars"))  # TRUE if mtcars exists in workspace

# 6) Exploring dataset structure
str(mtcars)       # Shows structure: type of each column, sample values
summary(mtcars)   # Gives statistical summary for each column

# Points to Remember (Unique for This Program)
# 1. data() without arguments lists all datasets available from loaded packages.
# 2. Many datasets are in base R's 'datasets' package; others come from installed packages.
# 3. Use data("name") to load a dataset into the workspace.
# 4. The ?dataset or help(dataset) command opens documentation for that dataset.
# 5. You can specify package name in data() to avoid conflicts: data("name", package="pkg").
# 6. exists("obj") checks if a dataset or object is currently in the workspace.
# 7. str() shows the internal structure: data type and preview for each column.
# 8. summary() gives quick descriptive stats for numeric variables and counts for factors.
# 9. Built-in datasets are read-only; if you modify them, save under a new object name.
# 10. Built-in datasets are great for practice and testing code before using real data.





































