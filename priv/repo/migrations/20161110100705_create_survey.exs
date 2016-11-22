defmodule Quality2.Repo.Migrations.CreateSurvey do
  use Ecto.Migration

  def change do
    create table(:surveys) do
      add :company, :string
      add :activities, :string
      add :participants, :string

      timestamps()
    end

  end
end
