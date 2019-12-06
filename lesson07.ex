defmodule Lesson07 do
#-------------- CLASSWORK --------------#
#-------------- ex1 --------------#
def conc [h|t] do
  h <> conc(t)
end

def conc([]), do: ""

#-------------- ex2 --------------#
def exfirst(n) do
  ex2(n, 0)
end

def ex2([ h | t ], sum) do
  sum = sum + h
  ex2(t, sum)
end

def ex2([], sum), do: sum

#-------------- ex3 --------------#
  def fac(n) do
    rec(n - 1, n)
  end

  defp rec(0, sum) do
    sum
  end

  defp rec(n, sum) do
    rec(n-1, sum * n)
  end

#-------------- ex3 new --------------#
def fac_new(n) when n > 0, do: n * fac_new(n-1)

def fac_new(0), do: 1


# lib/test_stela.ex
end
