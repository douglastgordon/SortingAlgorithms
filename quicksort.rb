# Time Complexity O(n log n)
def quicksort(arr)
  return arr if arr.length <= 1
  pivot = arr[arr.length/2]
  arr.delete_at(arr.length/2)
  left = []
  right = []

  arr.each do |el|
    if el <= pivot
      left << el
    else
      right << el
    end
  end

  left = quicksort(left)
  right = quicksort(right)

  left.concat([pivot]).concat(right)
end

p quicksort([1,2,3,4,5,6,7,7,8,9])
