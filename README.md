#Sorting Algorithms

A continually updated library of sorting algorithms written in Ruby.

##Comparison Sorts

These sorts all involve comparing elements and swapping or not swapping them.

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

Insertion sort forms a sorted array from left to right. One by one, insertion sort repeatedly takes the next element to the right and inserts it into its correct position among the sorted elements.

###Gnome sort

Best: n
Average: n^2
Worst: n^2

Gnome is like insertion sort. Except, gnome sort repeatedly takes the next element to the right and shifts it leftward until it is larger than the element next to it.

###Selection sort

Best: n^2
Average: n^2
Worst: n^2

Selection sort, like insertion sort, builds the sorted array from left to right. Selection sort repeatedly selects the smallest element from the unsorted elements and swaps it with the first unsorted element.

###Bubble sort

Best: n
Average: n^2
Worst: n^2

Bubble sort iterates over an array, swapping adjacent pairs if they are out of order. Bubble sort is done when there are no swaps made in a pass over the array.

###Cocktail sort  

Best: n
Average: n^2
Worst: n^2

Cocktail sort is an improvement on bubble sort: it iterates over the array forwards and backwards for every cycle. So, a small number at the end of the array will find its way to the beginning much faster.  

###Comb sort

Best: n
Average: n^2
Worst: n^2

Comb sort is another improvement on bubble sort: instead of swapping adjacent elements, it swaps elements at a continually decreasing interval. This comb sort has a gap "shrink" factor of 1.3.

##Non-Comparison sorts

###Histogram sort

Best: n
Average: n
Worst: n

Histogram sort works by iterating over the array and making a count array of the values, then iterating over the count array and placing each index the value at that index times in the output array.
Histogram sort is very fast but has a number of caveats: it can't handle negative numbers, it can't handle floating point numbers and its space complexity is the size of its largest element (e.g. if your array has the value 1,000,000 in it, the space complexity will be 1,000,000 - which isn't going to work).
