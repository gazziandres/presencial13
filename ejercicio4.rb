personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

def metodo (rh, buscar)
	a = rh.select {|k| (k == buscar)}
	a = a.to_a
	a.each_with_index do |value, i|
		return value
	end
end

h={}
personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
personas.each_with_index do |value, i|
	h[value + ':'] = edades[i]
end

print h

m = metodo(h,'Alejandro:')
print m
