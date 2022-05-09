defmodule Burritos.Repo.Migrations.SetupTables do
  use Ecto.Migration

  def up do
    create table(:orders) do
      timestamps()
    end

    create table(:categories) do
      add :name, :string
    end

    create table(:ingredients) do
      add :name, :string
      add :category, references(:categories, on_delete: :delete_all)
    end

    create table(:burritos) do
      add :order_id, references(:orders, on_delete: :delete_all)
      add :ingredient, references(:ingredients, on_delete: :delete_all)
      timestamps()
    end
  end

  def down do
    drop constraint(:ingredients, :ingredients_category_fkey)
    drop constraint(:burritos, :burritos_order_id_fkey)
    drop constraint(:burritos, :burritos_ingredient_fkey)
    drop table(:ingredients)
    drop table(:categories)
    drop table(:burritos)
    drop table(:orders)
  end
end
