#Calculate pizza slices per person

defmodule PizzaParty do
  def slices_per_person(people, pies, slices) do
    total_slices = pies * slices
    slice_per_person = div(total_slices,people) #total_slices/people
    remainder = total_slices - (people * slice_per_person) 
    {slice_per_person, remainder}
  end

  def handle_input(:error, string) do
    prompt(string)
  end

  def handle_input({number,""}, _string) do
    number
  end

  def handle_input(_, string) do
    prompt(string)
  end

  def prompt(string) do
    string
    |>IO.gets
    |>String.strip
    |>Integer.parse
    |>handle_input(string)
  end
end

people = PizzaParty.prompt("How many people are eating? ")
pies = PizzaParty.prompt("How many pizzas there be? ")
slices = PizzaParty.prompt("How many slices in a pie? ")

{spp, r} = PizzaParty.slices_per_person(people, pies, slices)
IO.puts("You have #{people} people eating #{pies} pizzas")
IO.puts("That's #{spp} slices per person")
IO.puts("There are #{r} slices remaining")

