defmodule Elisnipper.Snippet do
  use Elisnipper.Web, :model

  schema "snippets" do
    field :title, :string
    field :body, :string
    has_many :comments, Elisnipper.Comment

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body])
    |> validate_required([:title, :body])
  end

  def count_comments(query) do
    from snippet in query,
    group_by: snippet.id,
    left_join: comment in assoc(snippet, :comments),
    select: {comment, count(comment.id)}
  end
end
