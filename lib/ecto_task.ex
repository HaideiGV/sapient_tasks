defmodule EctoTask.Repo do
  use Ecto.Repo,
    otp_app: :my_app,
    adapter: Ecto.Adapters.Postgres
end

defmodule EctoTask.App do
  import Ecto.Query
  alias EctoTask.Users
  alias EctoTask.Posts
  alias EctoTask.Repo

#   def keyword_query do
#     query = from w in Weather,
#          where: w.prcp > 0 or is_nil(w.prcp),
#          select: w
#     Repo.all(query)
#   end

#   def pipe_query do
#     Weather
#     |> where(city: "Kraków")
#     |> order_by(:temp_lo)
#     |> limit(10)
#     |> Repo.all
#   end
end
