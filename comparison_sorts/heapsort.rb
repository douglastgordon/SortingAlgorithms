require_relative './heapsort_helpers/heap.rb'

def heap_sort(arr)
  heap = Heap.new(arr)
  p heap
  sorted_arr = []
  until heap.arr.empty?
    sorted_arr.unshift(heap.remove_max)
  end
  sorted_arr
end

arr = [14,34,2,12,5,3,2,1,35,6,3,2,12,5,1,332,12]
p heap_sort(arr)
