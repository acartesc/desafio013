personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

personas_hash = Hash[personas.zip edades] #{"Carolina"=>32, "Alejandro"=>28, "Maria Jesús"=>41, "Valentín"=>19}

puts '##################'

def wierd_method(hash, key)
  puts hash[key]
end

wierd_method(personas_hash, "Alejandro")

