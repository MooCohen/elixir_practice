defmodule Checkout do
  def get_price do
    IO.gets("Enter the price of the item: ")  
    |> String.strip
    |> String.to_integer
  end

  def get_quantity do
    IO.gets("Enter the quantity: ")
    |> String.strip
    |> String.to_integer
  end
  
  def multiply(price, quantity) do
    price * quantity
  end

  def calculate_subtotal(first, second, third) do
    first + second + third
  end

  def calculate_tax(subtotal) do
    subtotal * 0.055
  end

  def calculate_total(subtotal, tax) do
    subtotal + tax
  end
end
#combine get_price and get_quanity by returning both in a {}
item_one = Checkout.multiply(Checkout.get_price, Checkout.get_quantity)
item_two = Checkout.multiply(Checkout.get_price, Checkout.get_quantity)
item_three = Checkout.multiply(Checkout.get_price, Checkout.get_quantity)

subtotal = Checkout.calculate_subtotal(item_one, item_two, item_three)
tax = Checkout.calculate_tax(subtotal)

IO.puts("Subtotal: #{subtotal}")
IO.puts("Tax: #{Checkout.calculate_tax(subtotal)}")
IO.puts("Total: #{Checkout.calculate_total(subtotal, tax)}")
