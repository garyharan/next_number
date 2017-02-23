defmodule NextTest do
  use ExUnit.Case
  doctest Next

  import Next

  test "calculate" do
    assert calculate(12)   == 21
    assert calculate(19)   == 91
    # assert calculate(513)  == 531
    # assert calculate(2017) == 2071
  end

  test "pieces" do
    assert pieces(12) == [1, 2]
  end

  test "swap" do
    assert swap([1, 2]) == [2, 1]
  end
end
