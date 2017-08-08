defmodule BittrexElixir.Mixfile do
  use Mix.Project

  def project do
    [app: :bittrex_elixir,
     version: "1.0.0",
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
      {:httpoison, github: "edgurgel/httpoison", tag: :master},
      {:poison, github: "devinus/poison", tag: :master}
    ]
  end
end
