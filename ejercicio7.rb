inventario = {Notebooks: 4, PC_Escritorio: 6, Routers: 10, Impresoras: 6}

def add_element(hash)
	puts "Ingrese ítem, stock"
	input = gets.chomp.split(',').map{|elem| elem.strip}
	hash[input[0].to_sym] = input[1].to_i
	print hash
end

#el resto en método también

puts 'Bienvenido al Sistema de Inventario!, seleccione su opción:'

option = 0

while option !=7 
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
			puts "eligio 2"
		when 3
			puts "eligio 3"
		when 4
			puts "eligio 4"
		when 5
			puts "eligio 5"
		when 6
			puts "eligio 6"
		when 7
			puts "Adios!"
		else
			puts "Elija una opcion correcta"
	end
end