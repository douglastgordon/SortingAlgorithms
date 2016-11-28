def bubble_sort(arr)
  changed = true
  while changed == true
    i = 0
    changed = false
    while i < arr.length - 1
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        changed = true
      end
      i += 1
    end
  end
  arr
end
