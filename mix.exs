defmodule AwsExRayExAws.MixProject do
  use Mix.Project

  def project do
    [
      app: :aws_ex_ray_ex_aws,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :aws_ex_ray, :aws_ex_ray_httpoison]
    ]
  end

  defp deps do
    [
      {:aws_ex_ray, github: "lyokato/aws_ex_ray"},
      {:aws_ex_ray_httpoison, github: "lyokato/aws_ex_ray_httpoison"},
      {:ex_aws, "~> 2.0"},
      {:hackney, "~> 1.9"},
      {:sweet_xml, "~> 0.6"},
      {:recase, "~> 0.2"}
    ]
  end
end
