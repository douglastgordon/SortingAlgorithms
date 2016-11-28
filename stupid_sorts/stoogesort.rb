def stoogesort(arr)
  if arr.first > arr.last
    arr[0], arr[-1] = arr[-1], arr[0]
  end
  i = 0
  j = arr.length - 1
  if j - i > 1
    t = (j - i + 1)/3
    arr[i..j-t] = stoogesort(arr[i..j-t])
    arr[i+t..j] = stoogesort(arr[i+t..j])
    arr[i..j-t] = stoogesort(arr[i..j-t])
  end
  arr
end
