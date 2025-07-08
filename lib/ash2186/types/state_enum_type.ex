defmodule Ash2186.Types.StateEnumType do
  use Ash.Type.Enum, values: [:state_0, :state_1]

  @values %{
    0 => :state_0,
    1 => :state_1
  }
  @inverse_values Map.new(@values, fn {k, v} -> {v, k} end)

  @impl Ash.Type
  def storage_type(), do: :smallint

  # Casting input values (e.g., from forms or changesets)
  @impl Ash.Type
  def cast_input(value, _) do
    if value in Map.values(@values), do: {:ok, value}, else: :error
  end

  # Dumping atoms to integers for database storage
  @impl Ash.Type
  def dump_to_native(value, _) do
    if value in Map.values(@values), do: {:ok, Map.fetch!(@inverse_values, value)}, else: :error
  end

  # Loading integers from the database into atoms
  @impl Ash.Type
  def cast_stored(value, _) do
    if value in Map.keys(@values), do: {:ok, Map.fetch!(@values, value)}, else: :error
  end
end
