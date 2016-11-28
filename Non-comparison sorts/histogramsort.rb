def histogram_sort(arr, max)
  counter_arr = Array.new(max + 1, 0)
  arr.each do |el|
    counter_arr[el] += 1
  end
  output = []
  counter_arr.each_with_index do |el, i|
    el.times do
      output << i
    end
  end
  output
end
