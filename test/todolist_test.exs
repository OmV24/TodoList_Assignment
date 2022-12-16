defmodule TodoListTest do
  use ExUnit.Case

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(TodoList.Repo)
  end
end
