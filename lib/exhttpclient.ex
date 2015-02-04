defmodule ExHTTPClient do
  use HTTPoison.Base

  def process_response_body(body) do
    case Json.decode(body) do
      {:ok, body} -> body
      _ -> body
    end
  end
end
