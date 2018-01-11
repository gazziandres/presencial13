h = {"x": 1, "y":2}

h[:z] = ''

h[:x] = 5

h.delete (:y)

a = h.select {|k| (k == :z)}
a = a.to_a
a.each_with_index do |value, i|
	if value == ''
		puts 'No Yeah'
	else
		puts 'YEAH'
	end
end

h = h.invert

puts h