use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :learn_ex, LearnEx.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :learn_ex, LearnEx.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "learn_ex_test",
  pool: Ecto.Adapters.SQL.Sandbox
