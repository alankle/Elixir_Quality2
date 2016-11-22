defmodule Quality2.Repo.Migrations.AddSubthemeSurvey do
  use Ecto.Migration

  def change do
    alter table(:surveys) do

      add :subthemes01,{:array, :map}, default: []    
      add :subthemes02,{:array, :map}, default: []
      add :subthemes03,{:array, :map}, default: []
      add :subthemes04,{:array, :map}, default: []
      add :subthemes05,{:array, :map}, default: []
      add :subthemes06,{:array, :map}, default: []
      add :subthemes07,{:array, :map}, default: []
      add :subthemes08,{:array, :map}, default: []
      add :subthemes09,{:array, :map}, default: []
      add :subthemes10,{:array, :map}, default: []
      add :subthemes11,{:array, :map}, default: []
      add :subthemes12,{:array, :map}, default: []
      add :subthemes13,{:array, :map}, default: []
      add :subthemes14,{:array, :map}, default: [] 

      end
  end
end
