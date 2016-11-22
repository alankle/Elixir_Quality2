defmodule Quality2.SurveyControllerTest do
  use Quality2.ConnCase

  alias Quality2.Survey
  @valid_attrs %{activities: "some content", company: "some content", participants: "some content"}
  @invalid_attrs %{}

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, survey_path(conn, :index)
    assert html_response(conn, 200) =~ "Listing surveys"
  end

  test "renders form for new resources", %{conn: conn} do
    conn = get conn, survey_path(conn, :new)
    assert html_response(conn, 200) =~ "New survey"
  end

  test "creates resource and redirects when data is valid", %{conn: conn} do
    conn = post conn, survey_path(conn, :create), survey: @valid_attrs
    assert redirected_to(conn) == survey_path(conn, :index)
    assert Repo.get_by(Survey, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, survey_path(conn, :create), survey: @invalid_attrs
    assert html_response(conn, 200) =~ "New survey"
  end

  test "shows chosen resource", %{conn: conn} do
    survey = Repo.insert! %Survey{}
    conn = get conn, survey_path(conn, :show, survey)
    assert html_response(conn, 200) =~ "Show survey"
  end

  test "renders page not found when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, survey_path(conn, :show, -1)
    end
  end

  test "renders form for editing chosen resource", %{conn: conn} do
    survey = Repo.insert! %Survey{}
    conn = get conn, survey_path(conn, :edit, survey)
    assert html_response(conn, 200) =~ "Edit survey"
  end

  test "updates chosen resource and redirects when data is valid", %{conn: conn} do
    survey = Repo.insert! %Survey{}
    conn = put conn, survey_path(conn, :update, survey), survey: @valid_attrs
    assert redirected_to(conn) == survey_path(conn, :show, survey)
    assert Repo.get_by(Survey, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    survey = Repo.insert! %Survey{}
    conn = put conn, survey_path(conn, :update, survey), survey: @invalid_attrs
    assert html_response(conn, 200) =~ "Edit survey"
  end

  test "deletes chosen resource", %{conn: conn} do
    survey = Repo.insert! %Survey{}
    conn = delete conn, survey_path(conn, :delete, survey)
    assert redirected_to(conn) == survey_path(conn, :index)
    refute Repo.get(Survey, survey.id)
  end
end
