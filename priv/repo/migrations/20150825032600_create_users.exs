defmodule LearnEx.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username,         :string
      add :email,            :string
      add :last_solved_date, :datetime

      timestamps
    end
  end
end
