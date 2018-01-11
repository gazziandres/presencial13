

h={}
meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
meses.each_with_index do |value, i|
	h[value + ':'] = ventas[i]
end


b = h.invert

puts b
puts b.max.last






