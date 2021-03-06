use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :double_red, DoubleRed.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [],
  https: [port: 4001,
          otp_app: :double_red,
          keyfile: System.get_env("SSL_KEY_PATH"),
          certfile: System.get_env("SSL_CRT_PATH")
          ]
# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :double_red, DoubleRed.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "double_red_dev",
  hostname: "localhost",
  pool_size: 10

# ask @paulfri if you need this file
import_config "dev.secret.exs"
