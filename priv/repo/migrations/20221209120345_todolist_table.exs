defmodule TodoList.Repo.Migrations.TodolistTable do
  use Ecto.Migration

  def change do
    create table (:todo) do
      add :task_name, :string
    end
  end
end
