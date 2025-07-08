import Config

config :logger, level: :warning
config :ash, disable_async?: true

config :ash_2186, Ash2186.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "ash_2186_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10
