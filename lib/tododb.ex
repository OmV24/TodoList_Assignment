import Todolist
import Ecto.Query                     # Queries are used to retrieve and manipulate data from a repository.
import Ecto.Changeset                 # In order to insert, update or delete data from the database, Ecto.Repo.insert/2, update/2 and delete/2 require a changeset as their first parameter.
defmodule Tododb do
  def add_task(task) do               # Inserting Data.
    added_task = %Todolist{task_name: task}
    TodoList.Repo.insert(added_task)
  end
  def changeset(task , params \\ %{}) do
    task
    |> cast(params , [:task_name])
    |> validate_required([:task_name])
  end
  def update_task(id,task) do         # Updating Data.
    old_task = Todolist |> TodoList.Repo.get(id)
    IO.inspect(old_task)              # Gives id, old task name.
    old_task
    |> changeset(%{task_name: task})  # This changeset says that on the specified Task object, we're looking to make some changes.
    |> TodoList.Repo.update()
  end
  def delete_task(id) do              # Deleting Data.
    old_task = Todolist |> TodoList.Repo.get(id)
    old_task
    |> TodoList.Repo.delete()
  end
  def select_all() do
    query = from task_name in Todolist  # Runs a loop & returns all tasks.
    TodoList.Repo.all(query)
  end
end
