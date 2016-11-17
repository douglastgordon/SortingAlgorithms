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

arr1 = [2,4,5,8]
arr2 = [1,2,3,7,8]
p merge(arr1,arr2)
