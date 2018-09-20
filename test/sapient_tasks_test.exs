defmodule SapientTasksTest do
  use ExUnit.Case
  doctest SapientTasks

  test "greets the world" do
    assert SapientTasks.hello() == :world
  end
end
