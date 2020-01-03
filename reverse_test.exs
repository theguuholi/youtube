defmodule Algoritmos.String.ReverseTest do
  use ExUnit.Case
  alias Algoritmos.String.Reverse

  test "invert abcd" do
    assert Reverse.execute("abcd") == "dcba"
  end

  test "invert gustavo" do
      assert Reverse.execute("gustavo") == "ovatsug"
  end

  test "invert oi" do
      assert Reverse.execute("oi") == "io"
  end
end

