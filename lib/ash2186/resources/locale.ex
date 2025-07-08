defmodule Ash2186.Resources.Locale do
  use Ash.Resource,
    data_layer: :embedded,
    domain: Ash2186.Resources,
    embed_nil_values?: false

  @supported_locales [:en, :pt_BR]
  @sources [:selected, :accept_language_header, :fallback]

  code_interface do
    define :create
    define :update
  end

  actions do
    defaults [:read, :destroy, create: :*, update: :*]
  end

  attributes do
    attribute :locale, :atom do
      description "ISO 639-1 code"
      default :en
      constraints one_of: @supported_locales
      public? true
      allow_nil? false
    end

    attribute :source, :atom do
      description "How locale was determined ordered in descending preference"
      constraints one_of: @sources
      public? true
      allow_nil? false
    end
  end
end
