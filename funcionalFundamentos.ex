defmodule Matematicas do
  def suma(a, b), do: a + b
  def cuadrado(n), do: n * n
end

lista = [1, 2, 3, 4, 5]
nueva_lista = [0 | lista]
#extraer el primer elemento de la lista
[primero | resto] = [30,40,50]

#sumar una lista
defmodule SumarLista do
  #la funcion de una lista vacia es 0
  def sumar([]), do: 0
  #funcion recursiva
  def sumar([primero | resto]) do
    primero + sumar(resto)
  end

end

#orden superior
defmodule OrdenSuperior do
  lista1 = [-7,7,-6,-3,3]
  Enum.filter(lista1, fn elemento -> elemento > 0 end)
end

defmodule Ejercicios do
  def cantidad([]), do: 0

  def cantidad([ _ | resto]) do # El _ es que no necesitamos ese lugar
    1 + cantidad(resto)
  end

end

IO.puts("Suma de 2 y 3: #{Matematicas.suma(2, 3)}")
IO.puts("Cuadrado de 4: #{Matematicas.cuadrado(4)}")
IO.puts("Lista original: #{inspect(lista)}")
IO.puts("Nueva lista: #{inspect(nueva_lista)}")
IO.puts("Primer elemento de la lista: #{primero}")
IO.puts("Resto de la lista: #{inspect(resto, charlists: :as_lists)}")
