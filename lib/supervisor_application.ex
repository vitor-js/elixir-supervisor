defmodule SupervisorApplication do
  use GenServer

  def init(state), do: {:ok, state}

  def start_link(state \\ []) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def handle_call(:mostrar, _, state), do: {:reply, state, state}
  def handle_call(:retirar, _, [value | state]), do: {:reply, value, state}

  def handle_cast({:adicionar, value}, state) do
    {:noreply, state ++ [value]}
  end

  # public functions
  def mostrar(), do: GenServer.call(__MODULE__, :mostrar)
  def retirar(), do: GenServer.call(__MODULE__, :retirar)
  def adicionar(value), do: GenServer.cast(__MODULE__, {:adicionar, value})
end
