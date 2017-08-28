meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

h = Hash[meses.zip ventas]

puts h

h2 = h.invert

puts h2

puts h2.max_by { |key, value| key}