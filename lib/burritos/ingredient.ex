defmodule Burritos.Ingredient do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "ingredients" do
    field :name, :string
    belongs_to :category, Burritos.Category
  end

  def changeset(ingredient, params \\ %{}) do
    ingredient
    |> cast(params, [:name, :category_name])
    |> validate_required([:name, :category_name])
  end
end
