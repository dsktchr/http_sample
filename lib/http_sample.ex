defmodule HttpSample do
  import Plug.Conn

  def init(options) do
    options  
  end

  def call(conn, _opts) do
    conn
      |> put_resp_content_type("text/plain")
      |> send_resp(200, "Hello World")
  end

end

require Logger
{:ok, _} = Plug.Cowboy.http(HttpSample, [])
Logger.info("Plug new running on localhost:4000")
