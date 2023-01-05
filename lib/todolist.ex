defmodule Todolist do
  use Ecto.Schema

  schema "todo" do
    field :task_name, :string
    field :task_status, :string
  end
end
