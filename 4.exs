#Mad Libs

defmodule Madlib do
  def retrieve(type) do
    IO.gets("Enter a #{type}: ")
    |> String.strip
  end
end

types = ['noun', 'verb', 'adjective', 'adverb']
[noun, verb, adjective, adverb] = Enum.map(types, &Madlib.retrieve/1)

IO.puts "Do you #{verb} your #{adjective} #{noun} #{adverb}?"
