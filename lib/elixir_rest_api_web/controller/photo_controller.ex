defmodule ElixirRestApiWeb.PhotoController do
    use ElixirRestApiWeb, :controller

    def show(conn, %{"id" => id}) do
        {:ok, response} = HTTPoison.get("https://jsonplaceholder.typicode.com/albums/#{id}/photos")
        {:ok, photos} = Poison.decode(response.body)
        render(conn, "show.json", photos: photos)
    end
end