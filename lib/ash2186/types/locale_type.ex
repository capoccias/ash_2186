defmodule Ash2186.Types.LocaleType do
  use Ash.Type.NewType,
    subtype_of: :struct,
    constraints: [
      instance_of: Ash2186.Resources.Locale,
      preserve_nil_values?: false,
      fields: [
        locale: [
          type: :atom,
          allow_nil?: false
        ],
        source: [
          type: :atom,
          allow_nil?: false
        ]
      ]
    ]
end
