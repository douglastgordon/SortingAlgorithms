def binary_search(arr, target)
  return nil if arr.empty?
  probe = arr.length / 2

  if arr[probe] == target
    return probe
  elsif arr[probe] > target
    return binary_search(arr[0...probe], target)
  else
    searched = binary_search(arr[probe+1...arr.length], target)
    searched.nil? ? nil : searched + probe + 1
  end
end
