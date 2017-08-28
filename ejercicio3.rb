h = {x: 1, y:2}

h[:z] = 3

h[:x] = 5

h.delete(:y)

h.each { |key, value| puts "yeeah" if key == :z }

#h.each_key {|k| puts "yeeah" if key == :z} (otra forma solo con key)

b = {}
h.each { |key, value| b[value] = key }

#otra forma: h.invert

puts b
