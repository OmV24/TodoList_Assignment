import Todolist
import Ecto.Query                     # Queries are used to retrieve and manipulate data from a repository.
import Ecto.Changeset                 # changesets provide a way for track and validate changes before they are applied to the data.
defmodule Tododb do
  def add_task(task) do               # Inserting Data.
    added_task = %Todolist{task_name: task, task_status: "incomplete"}
    TodoList.Repo.insert(added_task)
  end
  def changeset(task , params \\ %{}) do
    task
    |> cast(params , [:task_name, :task_status])
    |> validate_required([:task_name, :task_status])
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
    query = from task_name in Todolist , # Runs a loop & returns all tasks.
    order_by: [desc: :id]
    TodoList.Repo.all(query)
  end

  def task_status(id,status) do         # Updating Data.
    old_task = Todolist |> TodoList.Repo.get(id)
    if status == "complete" do                # Gives id, old task name.
      old_task
      |> changeset(%{task_status: "incomplete"})  # This changeset says that on the specified Task object, we're looking to make some changes.
      |> TodoList.Repo.update()
    else
      old_task
      |> changeset(%{task_status: "complete"})  # This changeset says that on the specified Task object, we're looking to make some changes.
      |> TodoList.Repo.update()
    end
  end

  def completed_tasks() do
    query = from task_name in Todolist,  # runs a loop & returns all tasks.
      where: task_name.task_status == "complete"
    TodoList.Repo.all(query)
  end
end
