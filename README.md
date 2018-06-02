# AwsExRay - ExAws Support

## NOT STABLE YET

Please wait version 1.0.0 released.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `aws_ex_ray_ex_aws` to your list of dependencies in `mix.exs`:

```elixir
def application do
  [
    extra_applications: [
      :logger,
      :aws_ex_ray,
      :aws_ex_ray_httpoison
      # ...
    ],
    mod {MyApp.Supervisor, []}
  ]
end

def deps do
  [
    {:aws_ex_ray, "~> 0.1.0"},
    {:aws_ex_ray_httpoison, "~> 0.1.0"},
    {:aws_ex_ray_ex_aws, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/aws_ex_ray_ex_aws](https://hexdocs.pm/aws_ex_ray_ex_aws).

## USAGE

In your config file,
put `AwsExRay.ExAws.HTTPClient` to `:http_client` setting.

```elixir
config :ex_aws,
  http_client: AwxExRay.ExAws.HTTPClient
```

Then automatically record subsegment if HTTP request toward AWS-Services called on the tracing process.

## SEE ALSO

- Core: https://github.com/lyokato/aws_ex_ray
- Ecto Support: https://github.com/lyokato/aws_ex_ray_ecto
- Plug Support: https://github.com/lyokato/aws_ex_ray_plug
- HTTPoison Support: https://github.com/lyokato/aws_ex_ray_httpoison

