defmodule TodoList.Repo.Migrations.CreateTable do
  use Ecto.Migration

  def change do
    create table (:todo) do
      add :task_name, :string
      add :task_status, :string
    end
  end
end
