#!/bin/bash

# Prompt the user to enter a number between 5 and 9
echo -n "Enter a number between 5 and 9: "
read MAX_NO

# Validate the input to ensure it is between 5 and 9
if ! [[ $MAX_NO =~ ^[5-9]$ ]]; then
    echo "Please enter a number between 5 and 9. Try again."
    exit 1
fi

# Clear the screen
clear

# First stage: Print the upper pyramid
for ((i=1; i<=MAX_NO; i++)); do
    # Print leading spaces
    for ((s=MAX_NO; s>=i; s--)); do
        echo -n " "
    done
    # Print dots
    for ((j=1; j<=i; j++)); do
        echo -n " ."
    done
    echo ""
done

# Second stage: Print the lower pyramid
for ((i=MAX_NO; i>=1; i--)); do
    # Print leading spaces
    for ((s=i; s<=MAX_NO; s++)); do
        echo -n " "
    done
    # Print dots
    for ((j=1; j<=i; j++)); do
        echo -n " ."
    done
    echo ""
done
