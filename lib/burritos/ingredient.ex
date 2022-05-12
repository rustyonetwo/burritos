defmodule Burritos.Ingredient do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "ingredients" do
    field :name, :string
  end

  def changeset(ingredient, params) do
    ingredient
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
