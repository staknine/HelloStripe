defmodule HelloStripeWeb.PageController do
  use HelloStripeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def success(conn, _params) do
    render(conn, "success.html")
  end

  def cancel(conn, _params) do
    render(conn, "cancel.html")
  end
end
