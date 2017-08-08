defmodule Bittrex.Api.Market do
  alias Bittrex.Api

  def buy_limit(opts \\ []) do
    market = Keyword.fetch!(opts, :market)
    quantity = Keyword.fetch!(opts, :quantity)
    rate = Keyword.fetch!(opts, :rate)

    Api.get "market/buylimit", %{market: market, quantity: quantity, rate: rate}
  end

  def sell_limit(opts \\ []) do
    market = Keyword.fetch!(opts, :market)
    quantity = Keyword.fetch!(opts, :quantity)
    rate = Keyword.fetch!(opts, :rate)

    Api.get "market/selllimit", %{market: market, quantity: quantity, rate: rate}
  end

  def cancel(opts \\ []) do
    uuid = Keyword.fetch!(opts, :uuid)

    Api.get "market/cancel", %{uuid: uuid}
  end

  def open_orders(opts \\ []) do
    market = Keyword.fetch!(opts, :market)

    Api.get "market/getopenorders", %{market: market}
  end

  # BITTREX:
  # 'We highly suggest you do NOT place market orders unless you understand the ramifications of them.
  #  We adhere to the SEC definitions of LIMIT and MARKET orders.'
  #  https://www.sec.gov/fast-answers/answersmktordhtm.html
  #  https://www.sec.gov/fast-answers/answerslimithtm.html

  def buy_market(opts \\ []) do
    market = Keyword.fetch!(opts, :market)
    quantity = Keyword.fetch!(opts, :quantity)

    Api.get "market/buymarket", %{market: market, quantity: quantity}
  end

  def sell_market(opts \\ []) do
    market = Keyword.fetch!(opts, :market)
    quantity = Keyword.fetch!(opts, :quantity)

    Api.get "market/sellmarket", %{market: market, quantity: quantity}
  end
end
