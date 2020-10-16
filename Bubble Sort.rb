require "pry"
#We are going to loop through an unordered array, comparing the elements in it to each other, and ordering them from lowest to highest.


#Does your program have a user interface? What will it look like? What functionality will the interface have? Sketch this out on paper.
  #No

#What inputs will your program have? Will the user enter data or will you get input from somewhere else?
  #The program will have an array as the only input.

#What’s the desired output?
  #The desired output is the same array that is inputted, but the elements are in order from smallest to greatest.

#Given your inputs, what are the steps necessary to return the desired output?
  #We want to take the array we are provided
  #Compare the element at index 0 to the element at index 1
  #If the element at index 0 has a higher value that the element at index 1, then swap the indices of the two elements.
  #then compare the elements at index 1 and index 2.
  #repeat this for every element in the array
  #Once you reach the end of the array, loop back to the start and compare elements 0 and 1 again.
  #Loop through once for every element in the array minus one.

def bubble_sort(array)
  k = 0
  while k < array.length do
    i = 0
    until i == array.length - 1 do
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i+1], array[i]
        i += 1
      elsif array[i] == array[i + 1] || array[i] < array[i + 1]
        i += 1
      end
    end
    k += 1
  end
  p array
end

bubble_sort([4,3,78,2,0,2])
