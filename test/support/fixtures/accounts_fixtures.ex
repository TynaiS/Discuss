defmodule Discuss.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Discuss.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email.string: "some email.string"
      })
      |> Discuss.Accounts.create_user()

    user
  end
end
