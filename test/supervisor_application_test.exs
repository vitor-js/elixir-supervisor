defmodule SupervisorApplicationTest do
  use ExUnit.Case
  doctest SupervisorApplication

  test "greets the world" do
    assert SupervisorApplication.hello() == :world
  end
end
