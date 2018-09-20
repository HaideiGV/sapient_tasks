defmodule EctoTask.Posts do
  use Ecto.Schema
  import Ecto.Changeset
  alias EctoTasks.Users

  schema "posts" do
    field :kind, :string
    field :text, :string 
    belongs_to :users, Users
  end

    def changeset(posts, params \\ %{}) do
    posts |> validate_inclusion(:kind, ["article", "promotion", "link", "image"])
  end

end