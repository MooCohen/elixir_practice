#from programming elixir book
#function exercises

bz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, h) -> h
end

pft = fn
  n -> bz.((rem(n,3)),(rem(n,5)), n)
end

list = [10, 11, 12, 13, 14, 15, 16]
IO.puts(Enum.map(list, pft))

