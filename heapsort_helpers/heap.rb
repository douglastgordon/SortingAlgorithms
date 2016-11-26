class Heap

  attr_accessor :size, :arr

  def initialize(arr)
    @size = arr.length
    @arr = arr
    create_max_heap(@arr)
  end

  def create_max_heap(arr)
    (0..(@size/2)-1).to_a.reverse.each do |idx|
      ensure_heap(idx)
    end
  end

  def max
    arr[0]
  end

  def remove_max
    arr[-1], arr[0] = arr[0], arr[-1]
    arr.pop
    @size -= 1
    ensure_heap(0)
  end


  def left_child(idx)
    2*idx + 1
  end

  def right_child(idx)
    2*idx + 2
  end

  def left_child_value(idx)
    @arr[left_child(idx)]
  end

  def right_child_value(idx)
    @arr[right_child(idx)]
  end

  def leaf_node?(idx)
    idx >= @size/2
  end

  def satisfies_heap_condition?(idx)
    @arr[idx] >= left_child_value(idx) &&
    @arr[idx] >= right_child_value(idx)
  end

  def ensure_heap(idx)
    return if leaf_node?(idx) || satisfies_heap_condition?(idx)

    left_child_value = @arr[left_child(idx)]
    right_child_value = @arr[right_child(idx)]

    larger_child = nil
    if left_child_value > right_child_value
      larger_child = left_child(idx)
    else
      larger_child = right_child(idx)
    end

    @arr[idx], @arr[larger_child] = @arr[idx], @arr[larger_child]

    ensure_heap(larger_child)
  end

end
