defmodule Elisnipper.Router do
  use Elisnipper.Web, :router

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

  scope "/", Elisnipper do
    pipe_through :browser

    get "/", SnippetController, :index

    resources "/snippets", SnippetController
  end
end
