import Config

config :todolist,
ecto_repos: [TodoList.Repo]

config :todolist, TodoList.Repo,
  database: "todolist_repo",
  username: "postgres",
  password: "Om@240899",
  hostname: "localhost"

#import_config "#{config_env()}.exs"     # uncomment only while testing
