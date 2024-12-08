# Lua Stack Overflow Bug

This repository demonstrates a common Lua error: a stack overflow caused by recursively traversing deeply nested tables. The `bug.lua` file contains the problematic code.  The `bugSolution.lua` file provides a corrected version with a depth limit to prevent the stack overflow.

## Problem
The original `foo` function recursively iterates through nested tables without a check for maximum depth.  This leads to a stack overflow if the input table is sufficiently deep. 

## Solution
The solution adds a depth parameter to the function. This limits the recursion depth, preventing stack overflow errors even with deeply nested tables.