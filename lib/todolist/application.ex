defmodule Todolist.Application do

  @moduledoc false

  require Logger
  use Application

  @impl true
  def start(_type, _args) do
    # start_cowboy()
    children = [
      TodoList.Repo,
      {Plug.Cowboy, scheme: :http, plug: Todolist.Router, options: [port: 8000]}
    ]
    Logger.info("Todo List is running!!")
    opts = [strategy: :one_for_one, name: Todolist.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
