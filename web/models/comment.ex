defmodule Elisnipper.Comment do
  use Elisnipper.Web, :model

  schema "comments" do
    field :content, :string
    belongs_to :snippet, Elisnipper.Snippet, foreign_key: :snippet_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content])
    |> validate_required([:content, :snippet_id])
  end
end
