defmodule SimplePasswordAuthWeb.AuthController do
  use SimplePasswordAuthWeb, :controller
  alias SimplePasswordAuthWeb.Plugs.Password

  def auth(conn, _params) do
    if Password.already_authenticated?(conn) do
      conn
      |> Phoenix.Controller.redirect(to: "/home")
      |> halt
    else
      render(conn, :auth)
    end
  end
end
