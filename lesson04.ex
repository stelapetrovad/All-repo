defmodule Greeter do
###########Classwork#########
########### ex1 #########
  def startNew([person_name, second_name]) do
    hello(%{"name" => person_name, "middle" => second_name})
  end

  def hello(%{"name" => person_name, "middle" => second_name} = _param) do
    "Hello, #{person_name} #{second_name}"
  end


  ########### ex2 #########
  def length_of_tuple (tuple) do
    x = tuple_size(tuple)
    if x > 4 do
      "Why you should't use list"
    else
      x
    end
  end

  ########### ex3 #########
  def enumFilter (list) do
    Enum.filter(list, fn x -> x > 2000 end)
  end

  ########### ex4 #########
  def ex4 do
  1..100
  |>Enum.filter(fn num -> rem(num, 2) == 0 && num != 100 end)
  |>Enum.filter(fn num -> rem(num, 3) != 0 end)
  |>Enum.map_every(2, fn num -> num * 100 end)
  end

  ########### ex5 #########
  def ex5 do
    [%{name: "Donald", age: 10}, %{name: "Jerry", age: 21}, %{name: "Tom", age: 24}]
    |>Enum.filter(fn person -> person.age > 18 end)
  end

# lib/test_stela.ex
end
