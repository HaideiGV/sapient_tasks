defmodule SapientTasks.App do
  import Ecto.Query
  alias SapientTasks.Users
  alias SapientTasks.Posts
  alias SapientTasks.Repo

  def make_post_subq(users_id) do
    from(
      p in SapientTasks.Posts, 
      select: [p.kind, count(p.id)], 
      where: [users_id: ^users_id], 
      group_by: p.kind
    )
  end

  def make_stat_map(db_result) do
    %{
      user_id: Map.get(db_result, "user_id", 0),
      articles_count: Map.get(db_result, "article", 0),
      links_count: Map.get(db_result, "link", 0),
      promotions_count: Map.get(db_result, "promotion", 0),
      images_count: Map.get(db_result, "image", 0)
    }
  end

  def subq_map(user_id) do
    make_post_subq(user_id) 
    |> SapientTasks.Repo.all 
    |> Map.new(fn([key, value]) -> {key, value} end)
    |> Map.put("user_id", user_id)
    |> make_stat_map
  end

  def get_users_post_stat_fun_impl do
    from(u in SapientTasks.Users, select: u.id) 
    |> Repo.all
    |> Enum.map(fn(user_id) -> subq_map(user_id) end)
  end

  def get_users_post_stat_for_impl do
    users_ids = from(u in SapientTasks.Users, select: u.id) |> Repo.all
    for users_id <- users_ids do
      posts = 
        make_post_subq(users_id) 
        |> SapientTasks.Repo.all 
        |> Map.new(fn([key, value]) -> {key, value} end)
        |> Map.put("user_id", users_id)
        |> make_stat_map
    end
  end

end
