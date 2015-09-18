#Count the length of a string

defmodule HowLongIs do
  def string(prompt) do
    prompt
    |> IO.gets
    |> String.strip
    |> String.length
  end
end

IO.puts HowLongIs.string("What is the input string?")
