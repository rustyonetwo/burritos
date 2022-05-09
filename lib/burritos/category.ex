defmodule Burritos.Category do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "categories" do
    field :name, :string
  end

  def changeset(category, params \\ %{}) do
    category
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
