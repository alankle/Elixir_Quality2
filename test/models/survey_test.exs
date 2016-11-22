defmodule Quality2.SurveyTest do
  use Quality2.ModelCase

  alias Quality2.Survey

  @valid_attrs %{activities: "some content", company: "some content", participants: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Survey.changeset(%Survey{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Survey.changeset(%Survey{}, @invalid_attrs)
    refute changeset.valid?
  end
end
