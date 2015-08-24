defmodule LearnEx.PageController do
  use LearnEx.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
