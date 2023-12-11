javac P5.java

mkdir my_outputs 

java P5 < inputs/Factorial.miniRA > my_outputs/Factorial.s
java P5 < inputs/BinaryTree.miniRA > my_outputs/BinaryTree.s
java P5 < inputs/BubbleSort.miniRA > my_outputs/BubbleSort.s
java P5 < inputs/LinearSearch.miniRA > my_outputs/LinearSearch.s
java P5 < inputs/LinkedList.miniRA > my_outputs/LinkedList.s
java P5 < inputs/MoreThan4.miniRA > my_outputs/MoreThan4.s
java P5 < inputs/MustSpill.miniRA > my_outputs/MustSpill.s
java P5 < inputs/QuickSort.miniRA > my_outputs/QuickSort.s
java P5 < inputs/TreeVisitor.miniRA > my_outputs/TreeVisitor.s

mkdir orignal_answers

spim -f outputs/Factorial.s > orignal_answers/Factorial
spim -f outputs/BinaryTree.s > orignal_answers/BinaryTree
spim -f outputs/BubbleSort.s > orignal_answers/BubbleSort
spim -f outputs/LinearSearch.s > orignal_answers/LinearSearch
spim -f outputs/LinkedList.s > orignal_answers/LinkedList
spim -f outputs/MoreThan4.s > orignal_answers/MoreThan4
spim -f outputs/MustSpill.s > orignal_answers/MustSpill
spim -f outputs/QuickSort.s > orignal_answers/QuickSort
spim -f outputs/TreeVisitor.s > orignal_answers/TreeVisitor

mkdir my_answers

spim -f my_outputs/Factorial.s > my_answers/Factorial
spim -f my_outputs/BinaryTree.s > my_answers/BinaryTree
spim -f my_outputs/BubbleSort.s > my_answers/BubbleSort
spim -f my_outputs/LinearSearch.s > my_answers/LinearSearch
spim -f my_outputs/LinkedList.s > my_answers/LinkedList
spim -f my_outputs/MoreThan4.s > my_answers/MoreThan4
spim -f my_outputs/MustSpill.s > my_answers/MustSpill
spim -f my_outputs/QuickSort.s > my_answers/QuickSort
spim -f my_outputs/TreeVisitor.s > my_answers/TreeVisitor

#!/bin/bash

# Check Factorial
if [ "$(diff orignal_answers/Factorial my_answers/Factorial)" == "" ]; then
    echo "Success Factorial"
else
    echo "Failed Factorial"
fi

# Check BinaryTree
if [ "$(diff orignal_answers/BinaryTree my_answers/BinaryTree)" == "" ]; then
    echo "Success BinaryTree"
else
    echo "Failed BinaryTree"
fi

# Check BinarySearch
if [ "$(diff orignal_answers/BinarySearch my_answers/BinarySearch)" == "" ]; then
    echo "Success BinarySearch"
else
    echo "Failed BinarySearch"
fi

# Check BubbleSort
if [ "$(diff orignal_answers/BubbleSort my_answers/BubbleSort)" == "" ]; then
    echo "Success BubbleSort"
else
    echo "Failed BubbleSort"
fi

# Check LinearSearch
if [ "$(diff orignal_answers/LinearSearch my_answers/LinearSearch)" == "" ]; then
    echo "Success LinearSearch"
else
    echo "Failed LinearSearch"
fi

# Check LinkedList
if [ "$(diff orignal_answers/LinkedList my_answers/LinkedList)" == "" ]; then
    echo "Success LinkedList"
else
    echo "Failed LinkedList"
fi

# Check MoreThan4
if [ "$(diff orignal_answers/MoreThan4 my_answers/MoreThan4)" == "" ]; then
    echo "Success MoreThan4"
else
    echo "Failed MoreThan4"
fi

# Check MustSpill
if [ "$(diff orignal_answers/MustSpill my_answers/MustSpill)" == "" ]; then
    echo "Success MustSpill"
else
    echo "Failed MustSpill"
fi

# Check QuickSort
if [ "$(diff orignal_answers/QuickSort my_answers/QuickSort)" == "" ]; then
    echo "Success QuickSort"
else
    echo "Failed QuickSort"
fi

# Check TreeVisitor
if [ "$(diff orignal_answers/TreeVisitor my_answers/TreeVisitor)" == "" ]; then
    echo "Success TreeVisitor"
else
    echo "Failed TreeVisitor"
fi
