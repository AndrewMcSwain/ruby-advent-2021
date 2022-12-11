# _argv: link, datatype
# curl
content = File.read("input.txt")
content_structured = { sanitized_string_to_array: content.split("\n") }

# this works:
content_structured[:sanitized_string_to_array]
# this doesn't work 
@input = content_structured[:sanitized_string_to_array]
# 

@depths = [299,200,208,210,200,207,240,269,260,263]

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
      
get_zbearing(@depths)
# get_zbearing(content_structured[:sanitized_string_to_array]) 
# get get_zbearing(input)

