defmodule NextTest do
  use ExUnit.Case
  doctest Next

  import Next

  describe "calculate/1" do
    test "double digits vanilla paths" do
      assert calculate(12)   == 21
      assert calculate(19)   == 91
      # assert calculate(513)  == 531
      # assert calculate(2017) == 2071
    end

    test "double digits with no bigger integers" do
      assert calculate(21)   == -1
      assert calculate(91)   == -1
    end
  end

  test "pieces" do
    assert pieces(12) == [1, 2]
  end

  test "swap" do
    assert swap([1, 2]) == [2, 1]
  end
end
