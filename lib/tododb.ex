import Todolist
import Ecto.Query
defmodule Tododb do
  def add_task(task) do
    added_task = %Todolist{task_name: task}
    TodoList.Repo.insert(added_task)
  end

  def changeset(task , params \\ %{}) do
    task
    |> Ecto.Changeset.cast(params , [:task_name])
    |> Ecto.Changeset.validate_required([:task_name])
  end

  def update_task(id,task) do
    old_task = Todolist |> TodoList.Repo.get(id)
    IO.inspect(old_task)
    old_task
    |> changeset(%{task_name: task})
    |> TodoList.Repo.update()
  end

  def delete_task(id) do
    old_task = Todolist |> TodoList.Repo.get(id)
    old_task
    |> TodoList.Repo.delete()
  end

  def len() do
    query = from task_name in Todolist ,
          select: task_name
    TodoList.Repo.all(query)
  end
  def default() do
    TodoList.Repo.insert_all(Todolist,[
      %{task_name: "Add Task " },
      %{task_name: "Add Task " },
      %{task_name: "Add Task " },
      %{task_name: "Add Task " }
    ])
  end

  def show_task() do
    if length(len()) == 0 do
      default()
    end
    query = from task_name in Todolist ,
      order_by: [asc: :id],
      select: task_name
    data = TodoList.Repo.all(query)
    tasks = data|> Enum.map(&(&1.task_name))
    _= Enum.take(tasks, -4)
  end

  def show_id() do
    if length(len())==0 do
      default()
    end
    query = from task_name in Todolist ,
      order_by: [asc: :id],
      select: task_name
    data = TodoList.Repo.all(query)
    ids = data|> Enum.map(&(&1.id))
    _= Enum.take(ids, -4)
  end
end
