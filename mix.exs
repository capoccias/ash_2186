defmodule Ash2186.MixProject do
  use Mix.Project

  def project do
    [
      app: :ash_2186,
      version: "0.1.0",
      elixir: "~> 1.18.4",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      consolidate_protocols: Mix.env() != :dev,
      aliases: aliases(),
      elixirc_paths: elixirc_paths(Mix.env())
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Ash2186.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:sourceror, "~> 1.8", only: [:dev, :test]},
      {:ash_postgres, "~> 2.0"},
      {:ash, "3.5.25"},
      # {:ash, "3.5.24", override: true},
      {:igniter, "~> 0.6", only: [:dev, :test]}
    ]
  end

  defp aliases() do
    [test: ["ash.setup --quiet", "test"], setup: "ash.setup"]
  end

  defp elixirc_paths(:test),
    do: elixirc_paths(:dev) ++ ["test/support"]

  defp elixirc_paths(_),
    do: ["lib"]
end
