defmodule Homework0304 do
  ############# ex1 #############
  def ex1(arg1) do
    first(arg1)
  end

  def first([ head | _tail ] = _param) do
    "The argument is a list, its first agument is #{head}"
  end

  def first(tuple) when is_tuple(tuple) do
    IO.puts"The argument is a tuple"
    [ head | _tail ] = Tuple.to_list(tuple)
    "The argument is a list, its first argument is #{head}"
  end

  def first(map = %{:a => _}) do
    Map.to_list(map)
    "The argument is a list, its first argument is #{map[:a]}"
  end

  ############# ex2 #############
  def nested_list(num) do
    list = fn
    [1, [_, _], _] -> "1 match"
    [_, [2, _], _] -> "2 match"
    [_, [_, _], _] -> "Default. Doesn't match"
    end
    list.(num)
  end

############# ex3 #############
def add_num do
  Enum.each([1, 2, 3], fn(n) -> IO.puts n end)
  Enum.map([1, 2, 3], fn(n) -> n + 1 end)
end

  ############# ex4 #############
  def calc(side) do
    calc_triangle(side)
  end

  def calc_triangle({a, b, c}) do
    a + b + c
  end

  def calc_triangle([a, b, c]) do
    a + b + c
   end

   def calc_triangle(%{a: value_a, b: value_b, c: value_c}) do
   value_a + value_b + value_c

   end

   ############# ex5 #############
   def ex5([%{name: fname, age: sage}, %{name: fname1, age: sage1}, %{name: fname2, age: sage2}]) do
    "#{fname}: #{sage} years old,  #{fname1}: #{sage1} years old,  #{fname2}: #{sage2} years old"
    [~s(#{fname}: #{sage} years old) <> ~s(, #{fname1}: #{sage1} years old) <> ~s(, #{fname2}: #{sage2} years old)]
  end

  ############# ex7 (not full)#############
  def ex7 do
    Enum.find_value(_list = (["An example sentence", "Another sentence", "Third sentence"]),false, fn(x)-> x=~"a" end)
  end

end

# lib/test_stela.ex
