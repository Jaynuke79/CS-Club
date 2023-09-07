# compiler name
CXX = g++

# C++ compiler flags
# -c : just do preprocess; compile and assemble into object files
# -g : adds debugging information to the executable file
# -Wall : turns on most, but not  all, compiler warnings
# -std=c++17 : uses c++17 standard
# put all the required flags separated by space
CXXFLAGS = -c -g -Wall -std=c++17

# the build target executable file; .exe is not required
PROGRAM = functions.out

# list all .cpp files separated by space
CPPFILES = funtions.cpp

# make all rule/default rule that'll be run when we run "make"
# first compile each file to object file
# then make a single binary program
all:
	$(CXX) $(CXXFLAGS) $(CPPFILES)
	$(CXX) -o $(PROGRAM) *.o

# make clean rule
# delete object and binary files
clean:
	rm -f $(PROGRAM) *.o

# FIXME
# Add a rule to run the program
run: 
	./$(PROGRAM)

everything:
	$(CXX) $(CXXFLAGS) $(CPPFILES)
	$(CXX) -o $(PROGRAM) *.o
	./$(PROGRAM)
	rm -f $(PROGRAM) *.o

test:
	all
	run
	clean

git:
	$ git status
	$ git add File\ Manipulation.txt
	$ git commit -m “fi”
	$ git push
	$ git status
