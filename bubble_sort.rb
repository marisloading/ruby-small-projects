def bubble_sort(array)
  while array.sort != array
    array.each_index do |i|
      if i == array.length - 1
        # #
        # p "Iteration: #{i} is equal to Length: #{array.length - 1}"
        # #
        break
      else
        curr_num = array[i]
        next_num = array[i+1]
        # #
        # p "Current number: #{curr_num}"
        # p "Next number: #{next_num}"
        # #

        if curr_num > next_num
          array[i] = next_num
          array[i+1] = curr_num
        else
          # #
          # p array
          # #
          next
        end
      end
      # #
      # p array
      # #
    end
  end

  return array
end

prompt = "> "
p "Please input your array of numbers, separated by a comma. E.g: 1, 3, 4, 5"
print prompt
while array_to_sort = gets.chomp
  if array_to_sort.include? ","
    if /\D&&[^\.]/.match(array_to_sort)
      p "Letters were detected, the array should only include numbers."
      print prompt
    else
      array_to_sort = array_to_sort.split(",")
      for num in array_to_sort do
        num_index = array_to_sort.index(num)
        if num.include? "."
          array_to_sort[num_index] = num.to_f
        else
          array_to_sort[num_index] = num.to_i
        end
      end
      p "Ordered number array: #{bubble_sort(array_to_sort)}"
      break
    end
  else
    p "Did not detect any commas, please separate numbers by a comma."
    print prompt
  end
end