defmodule AwsExRay.ExAws do
  @moduledoc ~S"""
  ## USAGE

  In your config file,
  put `AwsExRay.ExAws.HTTPClient` to `:http_client` setting.

  ```elixir
  config :ex_aws,
    http_client: AwxExRay.ExAws.HTTPClient
  ```

  Then automatically record subsegment if HTTP request toward AWS-Services called on the tracing process.
  """
end
