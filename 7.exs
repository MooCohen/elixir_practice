#functions inception

prefix = fn foo -> (fn bar -> foo <> " " <> bar end ) end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rockz")
