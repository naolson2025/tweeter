defmodule Tweeter.TimelineFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Tweeter.Timeline` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        username: "some username",
        likes_count: 42
      })
      |> Tweeter.Timeline.create_post()

    post
  end
end
