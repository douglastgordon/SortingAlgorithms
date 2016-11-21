def cocktail_sort(arr)
  sorted = true
  while sorted == true
    sorted = false
    i = 0
    while i < arr.length - 1
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = true
      end
      i += 1
    end
    i -= 1
    while i > 0
      if arr[i+1] < arr[i]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = true
      end
      i -= 1
    end

  end
  arr

end


arr = [1,5,3,23,65,23,652,23,1211,553,12,12,5,6,3,123,53]

p cocktail_sort(arr)
