use Mix.Config

config :sapient_tasks, ecto_repos: [SapientTasks.Repo]

config :sapient_tasks, SapientTasks.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "sapient_tasks_repo",
  username: "test",
  hostname: "localhost",
  password: "test",
  port: "5432"
