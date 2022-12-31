defmodule Todolist.Application do

  @moduledoc false

  require Logger                          # Provides debug, info, warn, and error levels.
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TodoList.Repo,                      # Starts the Ecto process which receives and executes our application's queries.
      {Plug.Cowboy, scheme: :http, plug: Todolist.Router, options: [port: 8000]}
    ]
    Logger.info("Todo List is running!!")
    opts = [strategy: :one_for_one, name: Todolist.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
