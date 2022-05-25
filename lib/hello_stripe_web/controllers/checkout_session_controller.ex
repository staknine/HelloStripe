defmodule HelloStripeWeb.CheckoutSessionController do
  use HelloStripeWeb, :controller

  def create(conn, _params) do
    url = HelloStripeWeb.Endpoint.url()

    params = %{
      line_items: [
        %{
          # Provide the exact Price ID (e.g. pr_1234) of the product you want to sell
          price: "price_1L2LhZHk1jpJeQdKmTHZ6aUr",
          quantity: 1
        }
      ],
      mode: "payment",
      success_url: url <> "/success",
      cancel_url: url <> "/cancel",
      automatic_tax: %{enabled: true}
    }

    {:ok, session} = Stripe.Session.create(params)

    conn
    |> put_status(303)
    |> redirect(external: session.url)
  end
end
