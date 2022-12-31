defmodule Todolist do
  use Ecto.Schema

  schema "todo" do            # This defines the schema from the database that this schema maps to.
    field :task_name, :string
  end
end
