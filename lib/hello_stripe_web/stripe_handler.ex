defmodule HelloStripeWeb.StripeHandler do
  @behaviour Stripe.WebhookHandler

  @impl true
  def handle_event(%Stripe.Event{type: "checkout.session.completed"} = event) do
    # TODO: handle the charge.succeeded event
    IO.inspect(event, label: "checkout session completed")
    {:ok, event}
  end

  @impl true
  def handle_event(event) do
    IO.inspect(event)
    :ok
  end
end
