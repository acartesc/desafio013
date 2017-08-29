restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# 1. Obtener el plato mas caro.
puts restaurant_menu.max_by { |key, value| value}
puts '#########################################'

# 2. Obtener el plato mas barato.
puts restaurant_menu.min_by { |key, value| value}
puts '#########################################'

# 3. Sacar el promedio del valor de los platos.
sum = 0

restaurant_menu.each { |key, value| sum += value }
puts sum / restaurant_menu.length
puts '#########################################'

# 4. Crear un arreglo con solo los nombres de los platos.
platos = restaurant_menu.keys
print "#{platos} \n"
puts '#########################################'

# 5. Crear un arreglo con solo los valores de los platos.
prices = restaurant_menu.values
print "#{prices} \n"
puts '#########################################'

# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
restaurant_menu.each { |key, value| restaurant_menu[key] = value * 1.19 }
print "#{restaurant_menu} \n"
puts '#########################################'

#7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
special = restaurant_menu.select { |k, v| k.split.size > 1 }
special.each { |k, v| special[k] = v * 0.8 }

puts special
