defmodule TodoList.RepoCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias TodoList.Repo

      import Ecto
      import Ecto.Query
      import TodoList.RepoCase

      # and any other stuff
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(TodoList.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(TodoList.Repo, {:shared, self()})
    end

    :ok
  end
end
