#Retirement Calculator Exercise

defmodule RetirementCalculator do
  def prompt_for_integer(prompt) do
    prompt
    |> IO.gets
    |> String.strip
    |> String.to_integer
  end
end

current_age = RetirementCalculator.prompt_for_integer("What is your current age? ")
retire_age = RetirementCalculator.prompt_for_integer("What age do you wanna retire? ")

years_til_retirement = retire_age - current_age

IO.puts "You have #{years_til_retirement} years til you can retire."
{{current_year, _, _}, _} = :calendar.local_time

#universal_time(current_year, _, _)
IO.puts "You can retire in #{current_year + years_til_retirement}"
