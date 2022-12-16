defmodule Todolist.MixProject do
  use Mix.Project

  def project do
    [
      app: :todolist,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env()),
      aliases: aliases()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Todolist.Application, []}
    ]
  end

  defp deps do
    [
      # {:plug, "~> 1.14.0"},
      # {:cowboy, "~> 2.4"},
      {:plug_cowboy, "~> 2.5.2"},
      {:ecto_sql, "~> 3.0"},
      {:postgrex, "~> 0.16.5"},
      {:crawly,"~> 0.8"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

   # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
  defp aliases do
    [
     test: ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end

end
