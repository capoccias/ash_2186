import Config

config :ash_2186, Ash2186.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "ash_2186_dev",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
