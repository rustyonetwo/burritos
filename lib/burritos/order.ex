defmodule Burritos.Order do
  @moduledoc false

  # import Ecto.Changeset
  use Ecto.Schema

  schema "orders" do
    has_many :burrito, Burritos.Burrito
    timestamps(type: :utc_datetime_usec)
  end

  # def changeset(order) do
  #   order
  #   |> put_time
  # end
end
