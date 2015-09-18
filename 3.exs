#Quote somebody

defmodule Quote do
  def ask(prompt) do
    prompt
    |> IO.gets
    |> String.strip
  end

  def say(quote, name) do
    IO.puts "#{name} says \"#{quote}\""
  end
end

author_prompt = "Who said that? "
quote_prompt = "Gimmie a quote: "

Quote.say(Quote.ask(quote_prompt), Quote.ask(author_prompt))

