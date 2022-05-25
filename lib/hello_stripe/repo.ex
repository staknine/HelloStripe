defmodule HelloStripe.Repo do
  use Ecto.Repo,
    otp_app: :hello_stripe,
    adapter: Ecto.Adapters.Postgres
end
