defmodule ChartjsWeb.Router do
  use ChartjsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {ChartjsWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ChartjsWeb do
    pipe_through :browser

    live "/", PageLive.Index, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ChartjsWeb do
  #   pipe_through :api
  # end
end
