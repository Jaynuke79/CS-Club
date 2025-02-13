#!/bin/bash

# List of files mapped to a number
echo "Select a program to run:"
echo "0) Python"
echo "1) Java"
echo "2) C"
echo "3) C++"
echo "4) C#"
echo "5) JavaScript"
echo "6) TypeScript"
echo "7) Go"
echo "8) Rust"
echo "9) Swift"
echo "10) Kotlin"
echo "11) PHP"
echo "12) Ruby"
read -p "Enter the number: " choice

case $choice in
    0) python3 helloWorld.py ;;
    1) javac helloWorld.java && java helloWorld && rm helloWorld.class;; #
    2) gcc helloWorld.c -o helloWorld && ./helloWorld && rm helloWorld;;
    3) g++ helloWorld.cpp -o helloWorld && ./helloWorld && rm helloWorld;;
    4) mcs helloWorld.cs && mono helloWorld.exe && rm helloWorld.exe;; #
    5) node helloWorld.js ;; #
    6) tsc helloWorld.ts && node helloWorld.js ;; #
    7) go run helloWorld.go ;; #
    8) rustc helloWorld.rs && ./helloWorld && rm helloWorld;;
    9) swift helloWorld.swift ;;
    10) kotlinc helloWorld.kt -include-runtime -d helloWorld.jar && java -jar helloWorld.jar && rm helloWorld.jar;;
    11) php helloWorld.php ;;
    12) ruby helloWorld.rb ;;
    *) echo "Invalid choice!" ;;
esac
