defmodule Bittrex.Api.Public do
  alias Bittrex.Api

  def markets do
    Api.get "public/getmarkets"
  end

  def currencies do
    Api.get "public/getcurrencies"
  end

  def ticker(opts \\ []) do
    market = Keyword.fetch!(opts, :market)
    Api.get "public/getticker", %{market: market}
  end

  def summaries do
    Api.get "public/getmarketsummaries"
  end

  def summary(opts \\ []) do
    market = Keyword.fetch!(opts, :market)
    Api.get "public/getmarketsummary", %{market: market}
  end

  # type: "sell" or "both"
  def order_book(opts \\ []) do
    market = Keyword.fetch!(opts, :market)
    type = Keyword.fetch!(opts, :type)
    Api.get "public/getorderbook", %{market: market, type: type}
  end

  def history(opts \\ []) do
    market = Keyword.fetch!(opts, :market)
    Api.get "public/getmarkethistory", %{market: market}
  end
end
