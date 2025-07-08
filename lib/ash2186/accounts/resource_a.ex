defmodule Ash2186.Domain.ResourceA do
  use Ash.Resource,
    otp_app: :ash_2186,
    data_layer: AshPostgres.DataLayer,
    domain: Ash2186.Domain

  postgres do
    table "resource_a"
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

    attribute :locale_preference, Ash2186.Types.LocaleType do
      public? true
      allow_nil? true
    end
  end
end
