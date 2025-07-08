defmodule Ash2186.Domain do
  use Ash.Domain, otp_app: :ash_2186

  resources do
    resource Ash2186.Domain.ResourceA
    resource Ash2186.Domain.ResourceB
  end
end
