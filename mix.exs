defmodule BittrexElixir.Mixfile do
  use Mix.Project

  def project do
    [app: :bittrex_elixir,
     version: "1.0.1",
     elixir: "~> 1.5",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [
      extra_applications: [:httpoison, :logger],
      mod: {BittrexElixir.Application, []}
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 0.13.0"},
      {:poison, "~> 3.1"}
    ]
  end
end
