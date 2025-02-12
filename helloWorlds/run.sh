#!/bin/bash

# List of files mapped to a number
echo "Select a program to run:"
echo "1) Python"
echo "2) Java"
echo "3) C"
echo "4) C++"
echo "5) C#"
echo "6) JavaScript"
echo "7) TypeScript"
echo "8) Go"
echo "9) Rust"
echo "10) Swift"
echo "11) Kotlin"
echo "12) PHP"
echo "13) Ruby"
read -p "Enter the number: " choice

case $choice in
    1) python3 helloWorld.py ;;
    2) javac helloWorld.java && java helloWorld ;; #
    3) gcc helloWorld.c -o helloWorld && ./helloWorld && rm helloWorld;;
    4) g++ helloWorld.cpp -o helloWorld && ./helloWorld && rm helloWorld;;
    5) mcs helloWorld.cs && mono helloWorld.exe ;; #
    6) node helloWorld.js ;; #
    7) tsc helloWorld.ts && node helloWorld.js ;; #
    8) go run helloWorld.go ;; #
    9) rustc hello.rs && ./hello ;;
    10) swift hello.swift ;;
    11) kotlinc hello.kt -include-runtime -d hello.jar && java -jar hello.jar ;;
    12) php hello.php ;;
    13) ruby hello.rb ;;
    *) echo "Invalid choice!" ;;
esac
