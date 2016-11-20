defmodule Elisnipper.Repo.Migrations.CreateSnippet do
  use Ecto.Migration

  def change do
    create table(:snippets) do
      add :title, :string
      add :body, :text

      timestamps()
    end

  end
end
