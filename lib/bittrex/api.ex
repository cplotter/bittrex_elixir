defmodule Bittrex.Api do
  def get(command, params \\ %{}) do
    Bittrex.Api.Transport.get(command, params)
  end
end
