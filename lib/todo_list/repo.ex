'''
This module is what we'll be using to query our database shortly. It uses the Ecto.Repo module,
and the otp_app tells Ecto which Elixir application it can look for database configuration in.
'''
defmodule TodoList.Repo do
  use Ecto.Repo,
    otp_app: :todolist,
    adapter: Ecto.Adapters.Postgres
end
