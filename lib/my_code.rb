# My Code here....

def map_to_negativize(source_array)
  source_array.map{|i|  i * -1}
end

def map_to_no_change(source_array)
  source_array.map{|i| i }
end 

def map_to_double(source_array)
  source_array.map{|i| i *2}
end 

def map_to_square(source_array)
  source_array.map{|i| i**2}
end 




def reduce_to_total(source_array, starting_point=0)
  i = 0
  total = 0
  while i < source_array.length do
    total += source_array[i]
    i += 1
  end
  return total + starting_point
end



def reduce_to_total(source_array, starting_point = 0)
 total = source_array.reduce(:+)
   return  starting_point + total
end 

def reduce_to_all_true(source_array)
  source_array.reduce{|i| !!i}
end 


def reduce_to_any_true(source_array, starting_point = 0)
  i = 0
  total= starting_point
  while i < source_array.length do
    total = yield(total, source_array[i])
    i += 1
  end
  return total 
end 
