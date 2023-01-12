
def bubble_sort(array)
  length = array.length
  for x in 0...length
    sorted = true
    for i in 0...(length - x - 1)
      if array[i] > array[i+1]    
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end

    if sorted == true
      return array
    end
  end
end

puts bubble_sort([4,3,78,2,0,2,100,1000,1,2,4])