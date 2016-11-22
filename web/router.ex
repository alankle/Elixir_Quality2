defmodule Quality2.Router do
  use Quality2.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Quality2 do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    
    resources "/surveys", SurveyController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Quality2 do
  #   pipe_through :api
  # end
end
