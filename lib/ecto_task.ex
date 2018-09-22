defmodule SapientTasks.App do
  import Ecto.Query
  alias SapientTasks.Users
  alias SapientTasks.Posts
  alias SapientTasks.Repo

  def keyword_query do
    query = from p in Posts,
         where: p.users_id == 1,
         select: p
    Repo.all(query)
  end

  def piped_query do
    posts = Posts |> where(users_id: 1) |> Repo.all
    IO.puts posts
  end
end
