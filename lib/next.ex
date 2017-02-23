defmodule Next do
  import Integer, only: [digits: 1, undigits: 1]
  import Enum, only: [reverse: 1]

  def calculate(number) do
    # swap digits one and two
    # if resulting number is bigger
    #   return it
    # else
    #   return -1
    recollate(swap(pieces(number)))
  end

  def pieces(number) do
    digits(number)
  end

  def recollate(digits) do
    undigits(digits)
  end

  def swap(array) do
    reverse(array)
  end
end
