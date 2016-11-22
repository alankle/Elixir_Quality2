defmodule Quality2.Subtheme do
  use Quality2.Web, :model

  embedded_schema  do
    field :title, :string
    field :note, :integer    
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:note, :title])
    |> validate_required([:note])
  end
end
