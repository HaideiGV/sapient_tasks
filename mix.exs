defmodule SapientTasks.MixProject do
  use Mix.Project

  def project do
    [
      app: :sapient_tasks,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:postgrex, :ecto, :logger], mod: {SapientTasks, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.3"},
      {:poison, "~> 3.1"},
      {:ecto, "~> 2.2"},
      {:postgrex, "~> 0.13.5"}
    ]
  end
end
