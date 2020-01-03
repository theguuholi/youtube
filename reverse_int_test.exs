defmodule Algoritmos.ReverseIntTest do
  use ExUnit.Case
  alias Algoritmos.Reverse.Int

  test "invert positivos" do
    assert Reverse.execute(0) == 0
    assert Reverse.execute(5) == 5
    assert Reverse.execute(15) == 51
    assert Reverse.execute(90) == 9
    assert Reverse.execute(123) == 321
    assert Reverse.execute(897) == 798
    assert Reverse.execute(2359) == 9532
    assert Reverse.execute(1_234_567_890_987_654_321) == 1_234_567_890_987_654_321
    assert Reverse.execute(1_234_567_890) == 987_654_321
  end

  test "invert negativos" do
    assert Reverse.execute(-5) == -5
    assert Reverse.execute(-15) == -51
    assert Reverse.execute(-90) == -9
    assert Reverse.execute(-2359) == -9532
  end
end
