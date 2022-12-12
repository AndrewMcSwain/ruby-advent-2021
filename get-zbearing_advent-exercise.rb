# _argv: link, datatype
# curl
content = File.read("input.txt")
content_structured = { 
  sanitized_string_to_array: content
    .split("\n")
    .map {|a| a.to_i}
  }

@input = content_structured[:sanitized_string_to_array]

# @depths = [299,200,208,210,200,207,240,269,260,263]

def get_zbearing(array)
  array.each_with_index do |element, index|
    break if array[index + 1].nil?
    change = ( element - array[index + 1]) 
    if element > array[index + 1]     
      puts "up! #{change}"
    else
      puts "down! #{change}" 
    end
  end
end
      
puts get_zbearing(@input)

