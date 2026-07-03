#!/bin/bash
# This script calculates simple interest given principal,
# annual rate of interest and time period in years.

# Do not use this in production. Sample purpose only.

# Author: Additional Authors may be included here
#兼 Code modified for automation task

echo "----------------------------------------"
echo "        Simple Interest Calculator       "
echo "----------------------------------------"

# Prompt user for input fields
read -p "Enter the principal amount: " principal
read -p "Enter the annual rate of interest (as a percentage, e.g., 5 for 5%): " rate
read -p "Enter the time period in years: " time

# Perform the calculation using scale for decimal precision
# Formula: Interest = (Principal * Rate * Time) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)
total_amount=$(echo "scale=2; $principal + $interest" | bc -l)

echo "----------------------------------------"
echo "Calculated Results:"
echo "Interest Earned/Owed: $interest"
echo "Total Accumulated Amount: $total_amount"
echo "----------------------------------------"
