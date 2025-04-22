#!/bin/bash
echo "Welcome to the script!"
echo "This script will help you with some tasks."
echo "Please follow the instructions carefully."
echo "Let's get started!"
echo "First, we need to gather some information."
echo "Please enter your name:"
read name
echo "Hello, $name! It's nice to meet you."
echo "Now, let's move on to the next step."
echo "Please enter your age:"
read age
echo "Great! You are $age years old."
echo "Now, let's check if you are eligible for a discount."
if [ $age -ge 18 ]; then
    echo "You are eligible for a discount!"
else
    echo "Sorry, you are not eligible for a discount."
fi
echo "Thank you for participating in this script!"
echo "If you have any questions, please feel free to ask."
echo "Have a great day!"
echo "Goodbye!"