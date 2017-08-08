defmodule Bittrex.Api.Account do
  alias Bittrex.Api

  def balances do
    Api.get "account/getbalances"
  end

  def balance(opts \\ []) do
    currency = Keyword.fetch!(opts, :currency)

    Api.get "account/getbalance", %{currency: currency}
  end

  def deposit_address(opts \\ []) do
    currency = Keyword.fetch!(opts, :currency)

    Api.get "account/getdepositaddress", %{currency: currency}
  end

  def withdraw(opts \\ []) do
    currency = Keyword.fetch!(opts, :currency)
    quantity = Keyword.fetch!(opts, :quantity)
    address = Keyword.fetch!(opts, :address)
    paymentid = Keyword.fetch!(opts, :paymentid)

    Api.get "account/withdraw", %{currency: currency, quantity: quantity, address: address, paymentid: paymentid}
  end

  def order(opts \\ []) do
    uuid = Keyword.fetch!(opts, :uuid)

    Api.get "account/getorder", %{uuid: uuid}
  end

  def order_history do
    Api.get "account/getorderhistory"
  end

  def withdrawal_history(opts \\ []) do
    currency = Keyword.fetch!(opts, :currency)

    Api.get "account/getorder", %{currency: currency}
  end
end
