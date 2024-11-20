defmodule TopeteTest do
  use ExUnit.Case
  doctest Topete

  test "greets the world" do
    assert Topete.hello() == :world
  end
end
