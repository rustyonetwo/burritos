# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#

alias Burritos.Category
alias Burritos.Ingredient
alias Burritos.Repo

Repo.insert!(%Category{name: "Meat"})
Repo.insert!(%Category{name: "Vegetables"})
Repo.insert!(%Category{name: "Sauce"})
Repo.insert!(%Category{name: "Tortilla"})

Repo.insert!(%Ingredient{name: "Chicken"})
Repo.insert!(%Ingredient{name: "Beef"})
Repo.insert!(%Ingredient{name: "Beans"})
Repo.insert!(%Ingredient{name: "Salsa"})
Repo.insert!(%Ingredient{name: "Wheat Tortilla"})
Repo.insert!(%Ingredient{name: "Tomato Tortilla"})
Repo.insert!(%Ingredient{name: "Avocado"})
Repo.insert!(%Ingredient{name: "Tomato"})
Repo.insert!(%Ingredient{name: "Onion"})
