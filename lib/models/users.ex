defmodule SapientTasks.Users do
  use Ecto.Schema
  alias SapientTasks.Posts

  schema "users" do
    field :name, :string
    has_many :posts, {"users_posts", Posts}
  end
end