restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

a = restaurant_menu.invert.max

b = restaurant_menu.invert.min

sum = 0
restaurant_menu.each { |k, v| sum = sum + v }
c =  sum / restaurant_menu.length

print restaurant_menu.map{ |k, v| k}


print restaurant_menu.map{ |k, v| v}

print restaurant_menu.map{ |k, v| v*1.19}

d = restaurant_menu.map do |k, v|
  e = k.split(' ')
  if e[1] != nil
  print k,  v = v*0.8
end
end