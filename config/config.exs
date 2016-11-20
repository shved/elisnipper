# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elisnipper,
  ecto_repos: [Elisnipper.Repo]

# Configures the endpoint
config :elisnipper, Elisnipper.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "y2xNYmGBHcvZTD8+4mgAzJc8FgSb1D/DpI48VR2k/u1IgBOcEHJrdw3dg4EcYooO",
  render_errors: [view: Elisnipper.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Elisnipper.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :template_engines,
    slim: PhoenixSlime.Engine,
    slime: PhoenixSlime.Engine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
