#Simple Math

defmodule SimpleMath do
  def prompt_for_integer(prompt) do 
    prompt
    |> IO.gets
    |> String.strip
    |> String.to_integer
  end
end

x = SimpleMath.prompt_for_integer("What is the first number?")
y = SimpleMath.prompt_for_integer("What is the second number?")

IO.puts "#{x} + #{y} = #{x + y}"
IO.puts "#{x} - #{y} = #{x - y}"
IO.puts "#{x} * #{y} = #{x * y}"
IO.puts "#{x} / #{y} = #{div(x, y)}"
