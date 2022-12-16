defmodule TodoList.Repo do
  use Ecto.Repo,
    otp_app: :todolist,
    adapter: Ecto.Adapters.Postgres
end
