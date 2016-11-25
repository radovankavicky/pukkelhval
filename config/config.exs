# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pukkelhval,
  ecto_repos: [Pukkelhval.Repo]

# Configures the endpoint
config :pukkelhval, Pukkelhval.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "r7W2tj2UMAtz4gIH+LWk/gABGqePjAGKahDsxuWJTkzAsAb/4veHfTwprMupeeOH",
  render_errors: [view: Pukkelhval.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pukkelhval.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
