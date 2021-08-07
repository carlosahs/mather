# Mather, a simple math grader
Mather is a Wolfram Language program that checks a CSV file containing a list
of problems and solutions (both written in Wolfram Language syntax) so that 
the solutions are checked as incorrect or incorrect.

# Usage
## Requirements
* Wolfram Engine
* WolframScript
## Command line
To use mather, simply run the following command:
```
$ wolframscript -f mather.wl file_to_grade.csv
```
Mather will then create an `output.csv` containing all the contents of the
graded file and an additional column indicating if the provided solutions in
that file were indeed correct (True or False).
