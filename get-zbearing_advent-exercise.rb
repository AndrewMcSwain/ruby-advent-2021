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



