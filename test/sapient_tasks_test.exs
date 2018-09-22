defmodule SapientTasksTest do
  use ExUnit.Case
  doctest SapientTasks

  test "get github repo stars" do
    assert SapientTasks.Github.starts("rails/rails") > 40000
  end

  test "get github repo url" do
    assert SapientTasks.Github.gen_repo_url("some_name") == "https://api.github.com/repos/some_name"
  end

  test "ecto result map generator" do
    assert SapientTasks.App.make_stat_map(%{"user_id" => 1, "article" => 11}) == %{
      user_id: 1, articles_count: 11, links_count: 0, promotions_count: 0, images_count: 0
    }
  end

  test "wrap two lists" do
    assert SapientTasks.ListComposition.wrap_lists([1], ["a"]) == [[a: 1, b: "a"]]
  end
end
