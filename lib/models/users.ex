defmodule EctoTask.Users do
  use Ecto.Schema
  alias EctoTasks.Posts

  schema "users" do
    field :name, :string
    has_many :posts, {"users_posts", Posts}
  end
end