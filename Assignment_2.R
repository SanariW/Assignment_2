# Assignment 2: Narcissistic Numbers

# Link to public repo: https://github.com/SanariW/Assignment_2_Sanari_W..git

# Prompting the user to enter a three digit positive number, named "value".

value <- readline(promt = "Please enter a three digit positive number: ")

# Checking if the user input is numeric. If not, print an error message and quit.
# Check if the user input is a narcissistic number.
# Print appropriate message (if or if not) narcissistic number.

if(is.numeric(as.numeric(value)) & # This is to check if value is numeric.
   (as.numeric(value)) %% 1 == 0 & # This is to check if value is an integer.
   nchar(as.character(value)) == 3 & # This is to check if value is a three-digit number.
   as.numeric(value) > 0 { # This is to check if the value is a positive number.
     value <- as.integer(value) # Ensures value is integer and not a character.





# Check if the number is narcissistic.
# Display the result with an appropriate message.
