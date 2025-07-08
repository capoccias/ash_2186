defmodule Ash2186.Domain.ResourceB do
  use Ash.Resource,
    otp_app: :ash_2186,
    data_layer: AshPostgres.DataLayer,
    domain: Ash2186.Domain

  postgres do
    table "resource_b"
    repo Ash2186.Repo
  end

  code_interface do
    define :create
    define :update
  end

  actions do
    defaults [:read, :destroy, create: :*, update: :*]
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :state, Ash2186.Types.StateEnumType do
      default :state_0
      public? true
      allow_nil? false
    end
  end
end
