defmodule HttpSampleTest do
  use ExUnit.Case
  doctest HttpSample

  test "greets the world" do
    assert HttpSample.hello() == :world
  end
end
