defmodule Homework05 do

############# HOMEWORK #############
############# ex1 #############
  def calc({a, arg, b}) do
    if String.equivalent?(arg, "-") do
      IO.puts "a = #{a}"
      IO.puts "b = #{b}"
      (a - b) * ((a * a) + (a * b) + (b * b))
    else
      if String.equivalent?(arg, "+") do
        IO.puts "a = #{a}"
        IO.puts "b = #{b}"
        (a + b) * ((a * a) - (a * b) + (b * b))
      else
      IO.puts "You need to fill + or -"
      end
    end
  end

  def ex3([arg1]) do
    if String.length(arg1) > 9 do
      IO.puts "Long string: #{arg1}"

      else
      IO.puts "Short string: #{arg1}"
  end
  end

  def ex4([arg1, arg2]) do
    if String.length(arg1) > String.length(arg2) do
      IO.puts "The longer string is: #{arg1}"
    else
      if String.length(arg2) > String.length(arg1) do
        IO.puts "The longer string is: #{arg2}"
      else
      IO.puts "#{arg1} and #{arg2} are both equal"
      end
    end
  end

  #def ex5(arg) do
   # if [arg] do
    #  IO.puts "string #{arg}"
    #else
     # if {arg} do
      #  IO.puts "tuple"
      #if (%{arg:})
        #IO.puts "map"
      #else
       # IO.puts "nothing"
     # end
   # end
 # end

 def ex5(arg) do
  case arg do
    [ head | _ ] -> List.to_string([head])
    _ -> IO.puts " "
  end
 end

  def ex6([num1, num2]) do
    case [num1, num2] do
   [num1, num2] when num2 > 1 ->  "#{num2}"
   [num1, num2] when num1 == 3 -> "#{num2}"
   [num1, num2] when num1 > 4 -> IO.puts "ok"
    end
  end

  def ex7({a, b, c}) do
    case {a, b, c} do
      {a, b, c} when b > 1 -> "#{b}"
      {a, b, _} when a == 3 -> "#{b}"
      {a, _, _} when a > 4 -> "#{a}"
    end
  end


def ex8({a, b, c}) do
  if a > b do
    IO.puts "#{a}"
  else
    IO.puts b + c
  end
end

def ex9(lang) do
 map = %{
    "Red" => %{
      "gk" => {"Jody Reeves", 28, "right", 0},
      "def" => {"Kevin Martinez", 34, "right", 0},
      "mid" => {"Melvin Montgomery", 22, "left", 0},
      "atk" => {"Ramon Stokes", 35, "right", 0}
    },
    "Blue" => %{
      "gk" => {"Boyd Morris", 48, "left", 0},
      "def" => {"Nicholas Thomas", 42, "left", 0},
      "mid" => {"Blake Bradley", 18, "right", 0},
      "atk" => {"Guadalupe Tran", 32, "left", 0}
    },
    "Green" => %{
      "gk" => {"Clayton Love", 22, "left", 0},
      "def" => {"Dennis Rodgers", 25, "left", 0},
      "mid" => {"Rick Mcdaniel", 33, "right", 0},
      "atk" => {"Roosevelt Carson", 20, "left", 0}
    }
  }

  #case lang do
    value = Map.fetch!(map, lang)

    #lang1 when lang == map["Blue"] -> "2"
    #lang1 when lang == map["Green"] -> "3"
   # values =
   #   map
   #   |> Map.take([:matches_1, :matches_2, :matches_3])
   #   |> Map.values()
  # end

end

# lib/test_stela.ex
end
