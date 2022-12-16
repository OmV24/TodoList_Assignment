import Config

config :todolist, TodoList.Repo,
  username: "postgres",
  password: "Om@240899",
  database: "todolist_repo_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
