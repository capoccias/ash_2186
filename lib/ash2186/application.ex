defmodule Ash2186.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [Ash2186.Repo]

    opts = [strategy: :one_for_one, name: Ash2186.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
