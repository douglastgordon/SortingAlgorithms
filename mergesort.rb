def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length / 2
  first = merge_sort(arr.slice(0, mid))
  last = merge_sort(arr.slice(mid, arr.length - mid))
  merge(first, last)
end

def merge(arr1, arr2)
  merged_array = []
  until arr1.empty? || arr2.empty?
    if arr1[0] < arr2[0]
      merged_array << arr1.shift
    else
      merged_array << arr2.shift
    end
  end
  merged_array.concat(arr1).concat(arr2)
end
