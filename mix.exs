defmodule StatsigDemo.MixProject do
  use Mix.Project

  def project do
    [
      app: :statsig_demo,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:statsig, "~> 0.0.1"}
      {:statsig,
       git: "https://github.com/matt-hobbs-prima/erlang-sdk.git",
       branch: "fix-elixir-application-definition"}
    ]
  end
end
