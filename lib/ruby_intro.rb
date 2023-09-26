# Parte 1

def sum (arr)
  suma = 0
  arr.each do |numero|
    suma += numero
  end
  return suma
end

def max_2_sum(arr)
  # Si el arreglo está vacío, devuelve 0
  return 0 if arr.empty?

  # Si el arreglo tiene solo un elemento, devuelve ese elemento
  return arr[0] if arr.length == 1

  # Ordena el arreglo en orden descendente
  sorted_arr = arr.sort.reverse

  # Suma los dos primeros elementos (los más grandes)
  return sorted_arr[0] + sorted_arr[1]
end


def sum_to_n?(arr, n)

  seen_numbers = Set.new

  arr.each do |num|
    complement = n - num
    if seen_numbers.include?(complement)
      return true
    end

    seen_numbers.add(num)
  end

  return false
end


# Parte 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? (s)
  /^[b-df-hj-np-tv-z]/i.match?(s)
end

def binary_multiple_of_4? (s)
  if /^[01]+$/.match?(s) && s.to_i(2)%4 == 0
    return true
  else
    return false
  end
end

# Parte 3

class BookInStock

  # Constructor con verificación de argumentos
  def initialize(isbn, precio)
    if isbn.empty? || precio <= 0
      raise ArgumentError, "El número ISBN no puede estar vacío y el precio debe ser mayor que cero."
    end

    @isbn = isbn
    @precio = precio
  end

  # Getter para obtener el ISBN
  def isbn
    @isbn
  end

  # Setter para establecer el ISBN
  def isbn=(nuevo_isbn)
    @isbn = nuevo_isbn
  end

  # Getter para obtener el precio
  def precio
    @precio
  end

  # Setter para establecer el precio
  def precio=(nuevo_precio)
    @precio = nuevo_precio
  end

  # Método para obtener una representación formateada del libro
  def to_s
    "ISBN: #{@isbn}, Precio: $#{@precio.round(2)}"
  end

  # Método para obtener el precio formateado como una cadena
  def price_as_string
    "$%.2f" % @precio
  end

end
