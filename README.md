#Sorting Algorithms

Various sorting algorithms written in Ruby.

##Comparison Sorts

###Quicksort

Best: n log n
Average: n log n
Worst: n^2

A 'pivot' element is picked from the middle of the array. The other elements in the array are sorted into two sets: elements that are less than or equal to the pivot element, and elements that are greater than the pivot element. Quicksort is applied recursively on each set until reaching a base-case where the set is length is less than or equal to one (and therefore sorted).

###Merge sort

Best: n log n
Average: n log n
Worst: n log n

Merge sort divides an array into sorted arrays, and then uses a helper function which merges two adjacent sorted arrays. The initial run-through divides the array into one element long arrays - as these are known to be sorted.  


###Insertion sort

Best: n
Average: n^2
Worst: n^2

Insertion sort forms a sorted array from left to right. One by one, insertion sort repeatedly takes the next element to the right and shifts it leftward until it is larger than the element next to it.

###Selection sort

Best: n^2
Average: n^2
Worst: n^2

Selection sort, like insertion sort, builds the sorted array from left to right. Selection sort repeatedly selects the smallest element from the unsorted elements and swaps it with the first unsorted element.
