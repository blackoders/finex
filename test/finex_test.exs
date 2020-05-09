defmodule FinexTest do
  use ExUnit.Case
  doctest Finex

  test "greets the world" do
    assert Finex.hello() == :world
  end
end
