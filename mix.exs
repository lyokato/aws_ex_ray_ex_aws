defmodule AwsExRayExAws.MixProject do
  use Mix.Project

  def project do
    [
      app: :aws_ex_ray_ex_aws,
      version: "0.1.1",
      elixir: "~> 1.6",
      package: package(),
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
      {:aws_ex_ray, "~> 0.1"},
      {:aws_ex_ray_httpoison, "~> 0.1"},
      {:ex_doc, "~> 0.15", only: :dev, runtime: false},
      {:ex_aws, "~> 2.0"},
      {:hackney, "~> 1.9"},
      {:sweet_xml, "~> 0.6"},
      {:recase, "~> 0.2"}
    ]
  end

  defp package() do
    [
      description: "AWS X-Ray reporter ExAws support",
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/lyokato/aws_ex_ray_ex_aws",
        "Docs" => "https://hexdocs.pm/aws_ex_ray_ex_aws"
      },
      maintainers: ["Lyo Kato"]
    ]
  end
end
