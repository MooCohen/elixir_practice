#give area of a rectangle in feet and meters

defmodule Area do
  def in_meters(area) do
    area
    |>:math.pow(2)
    |>Area.times(0.09290304)
    |>:math.sqrt
  end

  def times(x,y) do
    x * y
  end

  def format_integer(string) do
    IO.gets(string)
    |> String.strip
    |> String.to_integer
  end
end


length = Area.format_integer("What is the length of the room in feet? ")
width = Area.format_integer("What is the width of the room in feet? ")

IO.puts("Area in feet: #{Area.times(length,width)}")
IO.puts("Area in meters: #{Area.in_meters(length*width)}")
