defmodule Lesson05 do

############CLASSWORK############

############ ex2 ############
  def ex2(list, sep) do
      for elem <- list, do: "#{elem}#{sep}"
  end

############ ex3 ############
  def ex3(list, param1, param2) when is_list(list) and is_integer (param1) and is_integer(param2) do
    if length(list) > param1 do
      Enum.at(list, param1)
    else
      param2
    end
    end

  def ex3([], _param1, param2), do: "#{param2}"

  def ex3(list, param1, param2), do: "Error"

############ ex4 ############
  def ex4(list, index) do
    if length(list) > index do
      Enum.take(list, index)
    else
      list
    end
  end

############ ex5 ############
  def ex5(list, list2) do
    for n <- list, do: String.upcase(n)

    for l <- list, String.length(l) > 5, do: String.upcase(l)

    for(m <- list) do
      if String.at(m, -1) == "a" do
        Enum.at(list2, 1) <> m
      else
        Enum.at(list2, 0) <> m
      end
    end
  end

############ ex6 ############
def ex6 (tuple) do
  x = tuple_size(tuple)
  if x > 4 do
    "Why you should't use list"
  else
    x
  end
end

############ ex7 ############
def ex7(numbers) do
  Enum.reduce(numbers, fn (numbers, sum) -> sum + numbers end)
end

############ ex8 ############
def ex8(numbers) do
  IO.puts "Even numbers:"
  Enum.filter(numbers, fn (numbers) -> rem(numbers, 2) == 0 end)
end

############ ex9 ############
def ex9() do
  Enum.reduce(["String1", "String2"], fn(x, acc) -> x <> " " <> acc end)
end

# lib/test_stela.ex
end
