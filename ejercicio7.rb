=begin
Se tiene un hash con el inventario de un negocio de computadores.
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10,"Impresoras": 6}
-Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
-Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
Ejemplo del input: "Pendrives, 100"
-Si el usuario ingresa 2, podrá eliminar un item.
-Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
-Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.
-Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
-Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en el inventario o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
-El programa debe repertirse hasta que el usuario ingrese 7 (salir).
=end
inventario = {"Notebooks" => 4, "PC Escritorio" => 6, "Routers" => 10,"Impresoras" => 6}
boleano = true

def menu
  puts "************** MENU *****************"
  puts "*  Opcion 1 - agregar item / stock  *"
  puts "*  Opcion 2 - eliminar item         *"
  puts "*  Opcion 3 - modificar item/stock  *"
  puts "*  Opcion 4 - ver el stock total    *"
  puts "*  Opcion 5 - ver mayor stock       *"
  puts "*  Opcion 6 - consultar existencia  *"
  puts "*  Opcion 7 - salir                 *"
  puts "*************************************"
end

def add(hash)
  #puts "ingrese item"
  #key = gets.chomp
  #puts "ingrese stock del producto"
  #value = gets.chomp
  #hash[key] = value
  #print hash

  puts "ingrese item / stock"
  puts 'Ej: "papa,10"'
  product = gets.chomp
  first, *rest = product.split(",")
  hash[first] = *rest
  print "#{hash} \n"
  puts "#{first} Agregado"
end

def delete(hash)
  puts "ingrese item"
  key = gets.chomp

  hash.delete(key)
  print "#{hash} \n"
  puts "#{key} eliminados"
end

def modify(hash)
  puts "ingrese modificacion item / stock"
  print "#{hash} \n"
  puts 'Ej: "papa,10"'
  product = gets.chomp
  first, *rest = product.split(",")
  hash[first] = *rest
  print "#{hash} \n"
  puts "#{first} modificado"
end

def stock(hash)
  puts "Cantidad de productos #{hash.values.sum}"
end

def item_biggest_stock(hash)
  puts hash
  puts "Item con mayor stock #{hash.key(hash.values.max)}"
end

def exist(hash)
  puts "Ingrese producto a consultar"
  product = gets.chomp
  if hash.include? product
    puts "#{product} Existe"
  else
    puts "#{product} No existe"
  end
end

begin
  menu
  opcion = gets.chomp

  case opcion
  when "1"
    add(inventario)
  when "2"
    delete(inventario)
  when "3"
    modify(inventario)
  when "4"
    stock(inventario)
  when "5"
    item_biggest_stock(inventario)
  when "6"
    exist(inventario)
  when "7"
    boleano = false
  end
end while boleano