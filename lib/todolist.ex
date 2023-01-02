defmodule Todolist do
  use Ecto.Schema

  schema "todo" do
    field :task_name, :string
  end
end
