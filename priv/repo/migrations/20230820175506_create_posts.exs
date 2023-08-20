defmodule Tweeter.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :username, :string
      add :body, :text
      add :likes_count, :integer

      timestamps()
    end
  end
end
