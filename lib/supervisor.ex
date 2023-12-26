defmodule SupervisorApplication.Supervisor do
  use Supervisor

  def init(:ok) do
    children = [
      {SupervisorApplication, [1, 2, 3]}
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end

  def start_link(opts) do
    Supervisor.start_link(__MODULE__, :ok, opts)
  end
end
