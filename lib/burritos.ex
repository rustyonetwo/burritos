defmodule Burritos do
  @moduledoc false

  alias Burritos.Repo

  def new(ingredient) do
    Repo.insert!(%Burritos.Burrito{ingredient: ingredient})
  end
end
