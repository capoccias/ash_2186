# A reproduction for Ash issue #2186

https://github.com/ash-project/ash/issues/2186

## Created using helper script on ash-hq.org

```sh
mix archive.install hex igniter_new --force

mix igniter.new ash_2186 --install ash,ash_postgres --yes

cd ash_2186 && mix ash.setup
```

## To reproduce:

1. `mix setup`\
   This expects a db at localhost:5432
1. `iex -S mix`\
1. See behavior with Ash 3.5.25

```elixir
import Ash.Query
alias Ash2186.Domain.{ResourceA, ResourceB}
alias Ash2186.Resources.Locale

resource_a = ResourceA.create!
resource_a |> ResourceA.update!(%{locale_preference: %Locale{locale: :en, source: :selected}})

resource_b = ResourceB.create!
resource_b |> ResourceB.update!(%{state: :state_1})
```

1. See behavior with Ash 3.5.24

```elixir
# mix.exs

{:ash, "3.5.24", override: true},

# sh

mix deps.get

# iex -S mix

# See above
```
