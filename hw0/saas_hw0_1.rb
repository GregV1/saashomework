# Define a method sum which takes an array of integers as an argument and 
# returns the sum of its elements. For an empty array it should return zero.

def sum(int_array)
	
	if int_array == [] then return 0
	
	else
	
	    total = 0
		int_array.each { |x| total = total + x } 	
	    total
	    
	end
end	



# Define a method max_2_sum which takes an array of integers as an argument and 
# returns the sum of its two largest elements. For an empty array it should return 
# zero. For an array with just one element, it should return that element.

def max_2_sum( int_array )
    
    if int_array == [] then return 0
    
    elsif int_array.length == 1 then return int_array[ 0 ]
    
    else
	 
	 int_array.sort! { |x,y| y <=> x }
	 int_array[ 0 ] + int_array[ 1 ]
	
	end

end

# Define a method sum_to_n? which takes an array of integers and an additional 
# integer, n, as arguments and returns true if any two distinct elements in the 
# array of integers sum to n. An empty array or single element array should both 
# return false.


def sum_to_n?( int_array, n )

  if int_array.empty? then return false
   
  elsif int_array.length == 1 then return false
   
  else
 
        q = []
        int_array.combination(2).each{ |b| q << b[0] + b[1] }
        return q.include?(n) 
        
  end
  
end
