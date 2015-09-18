#calculate num gallons per square feet to paint a room
# 1 gal = 350 sq feet

defmodule Paint do
  def calculate(length, width) do
    area = length * width
    output({div(area, gallon), rem(area, gallon)})
  end

  def output({gallons, 0}) do
    IO.puts("You'll need #{gallons} gallons.")
  end

  def output({gallons, _}) do
    IO.puts("You'll need #{gallons + 1} gallons.")
  end

  def gallon do
    350
  end

  def handle_input(:error, string) do
    prompt(string)
  end

  def handle_input({number, ""}, _string) do
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

length = Paint.prompt("What is the length of the room? ")
width = Paint.prompt("What is the width of the room? ")
Paint.calculate(length, width)
#divide by 350
#round up
