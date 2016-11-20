defmodule Elisnipper.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :content, :text
      add :snippet_id, references(:snippets, on_delete: :nothing)

      timestamps()
    end
    create index(:comments, [:snippet_id])

  end
end
