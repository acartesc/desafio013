inventario = { Notebooks: 4, PC_Escritorio: 6, Routers: 10, Impresoras: 6 }

def add_element(hash)
  puts 'Ingrese ítem, stock'
  input = gets.chomp.split(',').map { |elem| elem.strip }
  hash[input[0].to_sym] = input[1].to_i
  print hash
end

def delete_element(hash)
  puts 'Digite el nombre del ítem'
  input = gets.chomp.to_sym
  hash.delete(input)
  print hash
end

def update_element(hash)
  puts 'Ingrese actualización ítem, stock'
  input = gets.chomp.split(',').map { |elem| elem.strip }
  hash[input[0].to_sym] = input[1].to_i
  print hash
end

def greater_element(hash)
	puts 'El ítem con mayor stock es'
	print hash.max_by { |key, value| value }
end

def search_element(hash)
  puts 'Digite el nombre del ítem'
  input = gets.chomp.to_sym
  hash.each { |key, value| puts "Ítem: #{key}, Stock: #{value}" if key == input }
end

puts 'Bienvenido al Sistema de Inventario!, seleccione su opción:'

option = 0

while option != 7 
  puts "\n"
  puts '1. Agregar un ítem'
  puts '2. Eliminar un ítem, digite su nombre'
  puts '3. Actualizar información, (indicar ítem, stock)'
  puts '4. Ver stock total'
  puts '5. Ver ítem con mayor stock'
  puts '6. Buscar ítem (indique su nombre)'
  puts '7. Para salir' 

  option = gets.chomp.to_i

  case option 
    when 1
      add_element(inventario)

    when 2
      delete_element(inventario)
    
    when 3
      update_element(inventario)

    when 4
      print "#{inventario} \n"

    when 5
      greater_element(inventario)
    
    when 6
      search_element(inventario)
    
    when 7
      puts 'Adios!'
    
    else
      puts 'Elija una opcion correcta'
  
  end
end
