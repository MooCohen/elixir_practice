#learning how to use &


one = Enum.map [1,2,3,4], fn x -> x + 2 end
two = Enum.map [1,2,3,4], &(&1 + 2)

three = Enum.each [1,2,3,4], fn x -> IO.inspect x end
four = Enum.each [1,2,3,4], &(IO.inspect/1)

