defmodule SapientTasks.Repo.Migrations.Init do
  use Ecto.Migration

  def up do
    create table("users") do
      add :name, :string, size: 200
      timestamps()
    end

    create table("posts") do
      add :kind, :string, size: 20
      add :text, :string, size: 1000
      add :users_id, references(:users)
      timestamps()
    end
  end

  def down do
    drop table("posts")
    drop table("users")
  end
end
