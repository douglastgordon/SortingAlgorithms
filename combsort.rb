def comb_sort(arr)
  sorted = true
  shrink = 1.3
  gap = arr.length
  while sorted == true || gap > 1
    gap = (gap/shrink).floor unless gap == 1
    sorted = false
    i = 0
    puts gap
    while i < arr.length - gap
      if arr[i] > arr[i+gap]
        arr[i], arr[i+gap] = arr[i+gap], arr[i]
        sorted = true
      end
      i += 1
    end
  end
  arr
end
