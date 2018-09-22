defmodule SapientTasks do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(SapientTasks.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: SapientTasks.Supervisor]
    
    Supervisor.start_link(children, opts)
  end

end
