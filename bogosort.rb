def bogosort(arr)
  while !sorted?(arr)
    arr = shuffle(arr)
  end
  arr
end

def sorted?(arr)
  return true if arr.length <= 1
  i = 1
  prev_value = arr.first
  while i < arr.length
    if arr[i] < prev_value
      return false
    else
      prev_value = arr[i]
    end
    i += 1
  end
  true
end

def shuffle(arr)
  output = []
  until arr.empty?
    idx = rand(arr.length)
    output << arr[idx]
    arr.delete_at(idx)
  end
  output
end
