def square_array(array)
  array.map do |element|
    element * element
  end
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.collect do |element|
    element.capitalize + "!"
  end
end

def long_planeteer_calls(planeteer_calls)
  planeteer_calls.select do |element|
    if element.length.to_i > 4 
    return true
  else
    return false
    end
  end
end

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  
  # Use an Enumerable to check if any elements in the passed in array match the valid calls listed above 
  # Return the first valid call found, or return nil if no valid calls are found
  
  planeteer_calls.find do |obj| 
    if obj == valid_calls
      return valid_calls[0]
    else
      return nil
    end
  end
end
