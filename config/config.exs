import Config

config :todolist,                 # This tells our application about the repo, which will allow us to run commands such as mix ecto.create.
ecto_repos: [TodoList.Repo]

config :todolist, TodoList.Repo,
  database: "tasklist_repo",
  username: "postgres",
  password: "Om@240899",
  hostname: "localhost"

# import_config "#{config_env()}.exs"     # uncomment only while testing
