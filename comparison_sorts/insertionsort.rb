def insertion_sort(arr)
  i = 1
  while i < arr.length
    if i == 0
      i += 1
    elsif arr[i] < arr[i-1]
      arr[i], arr[i-1] = arr[i-1], arr[i]
      i -= 1
    else
      i += 1
    end
  end
  arr
end
