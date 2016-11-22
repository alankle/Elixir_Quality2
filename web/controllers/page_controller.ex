defmodule Quality2.PageController do
  use Quality2.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
