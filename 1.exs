#Get a name and say it

defmodule SayHello do
  def name, do: IO.gets "Whats your name? "
  def say(name), do: IO.puts "Hello, #{name}"
end

SayHello.say(SayHello.name)
