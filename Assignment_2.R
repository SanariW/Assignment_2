# Assignment 2: Narcissistic Numbers

# Link to public repo: https://github.com/SanariW/Assignment_2_Sanari_W..git

# Prompting the user to enter a three digit positive number, named "user_input".

user_input <- readline(prompt = "Please enter a three-digit, positive number: ")

# Checking if the user input is numeric, three digits, and positive. If not, print an error message and quit.
# If the user input meets all three criteria, then can determine if input is narcissistic.
# Print appropriate message if user input is a narcissistic number or not.
# ASSUMPTION: 0 is not a positive number.

if(is.numeric(as.numeric(user_input)) & # This is to check if user input is numeric.
   (as.numeric(user_input)) %% 1 == 0 & # This is to check if user input is an integer.
   nchar(as.character(user_input)) == 3 & # This is to check if user input is a three-digit number.
   (as.numeric(user_input)) > 0) { # This is to check if the user input is a positive number.
     value <- as.integer(user_input) # Ensure user input is integer and not a character.

       splitdigits <- as.numeric(strsplit(user_input, "") [[1]]) # Splitting given user input into a list of values.

       sum_of_cubes <- sum(splitdigits ^ 3) # Determining the sum of cubes of each digit of the user input after the user input is split into digits.
                                            # For example, if user input is "153", each digit ("1", "5", "3") will be cubed and summed.

       if((as.numeric(user_input)) == (sum_of_cubes)) { # Determining if sum_of_cubes is equal to user_input to see if it is a Narcissistic number.
         print(paste(user_input, "is a Narcissistic number!"))
       } else {
         print(paste(user_input, "is not a Narcissistic number!"))
       }
     } else {
       print(paste(user_input, "is an invalid entry. Entry must be a positive, three-digit number. Terminating..."))
     }
