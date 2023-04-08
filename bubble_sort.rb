def bubble_sort (input_array)  
  loop do
    sorted = false
    for i in 1..input_array.length-1
      if input_array[i-1] > input_array[i]
        input_array[i-1], input_array[i] = input_array[i], input_array[i-1]
        sorted = true     
      end
    end
    break if  not  sorted 
  end
  return input_array
end

input = [3,2,6,0,4,7,89,0,76,789,8,9,1,5]
print bubble_sort (input)
