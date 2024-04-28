#!/bin/bash

categories=("Music" "Entertainment" "Gaming" "Comedy")
for category in "${categories[@]}"; do
    awk -F ',' -v category="$category" '$8=="United States" && $5==category {print $0 > "UnitedStates/"category".txt"}' "Global YouTube Statistics.csv"
done

