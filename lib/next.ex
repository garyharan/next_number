require IEx

defmodule Next do
  import Integer, only: [digits: 1, undigits: 1]
  import Enum, only: [reverse: 1]

  def calculate(number) do
    # swap digits one and two
    # if resulting number is bigger
    #   return it
    # else
    #   return -1
    swapped = recollate(reverse(pieces(number)))
    # if swapped > number do
      swapped
    # else
    #   -1
    # end
  end

  def pieces(number) do
    digits(number)
  end

  def recollate(digits) do
    undigits(digits)
  end

  def swap(array, origin_index, target_index) do
    reversed = reverse(array)
    origin = Enum.at(reversed, origin_index)
    reversed = List.replace_at(reversed, origin_index, Enum.at(reversed, target_index))
    reverse(List.replace_at(reversed, target_index, origin))
  end
end
