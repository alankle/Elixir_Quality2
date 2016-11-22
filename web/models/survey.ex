defmodule Quality2.Survey do
  use Quality2.Web, :model

  schema "surveys" do
    field :company, :string
    field :activities, :string
    field :participants, :string

    embeds_many :subthemes01, Quality2.Subtheme
    embeds_many :subthemes02, Quality2.Subtheme
    embeds_many :subthemes03, Quality2.Subtheme
    embeds_many :subthemes04, Quality2.Subtheme
    embeds_many :subthemes05, Quality2.Subtheme
    embeds_many :subthemes06, Quality2.Subtheme
    embeds_many :subthemes07, Quality2.Subtheme
    embeds_many :subthemes08, Quality2.Subtheme
    embeds_many :subthemes09, Quality2.Subtheme
    embeds_many :subthemes10, Quality2.Subtheme
    embeds_many :subthemes11, Quality2.Subtheme
    embeds_many :subthemes12, Quality2.Subtheme
    embeds_many :subthemes13, Quality2.Subtheme
    embeds_many :subthemes14, Quality2.Subtheme   

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:company, :activities, :participants])
    |> cast_embed(:subthemes01) 
    |> cast_embed(:subthemes02)
    |> cast_embed(:subthemes03)
    |> cast_embed(:subthemes04)
    |> cast_embed(:subthemes05)
    |> cast_embed(:subthemes06)
    |> cast_embed(:subthemes07)
    |> cast_embed(:subthemes08)
    |> cast_embed(:subthemes09)
    |> cast_embed(:subthemes10)
    |> cast_embed(:subthemes11)
    |> cast_embed(:subthemes12)
    |> cast_embed(:subthemes13)
    |> cast_embed(:subthemes14)
    |> validate_required([:company, :activities, :participants])
  end
end
