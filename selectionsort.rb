def selection_sort(arr)
  i = 0
  while i < arr.length - 1
    j = i + 1
    min = arr[i]
    mindex = i
    while j < arr.length
      if arr[j] < min
        min = arr[j]
        mindex = j
      end
      j += 1
    end
    arr[i], arr[mindex] = arr[mindex], arr[i]
    i += 1
  end
  arr
end
