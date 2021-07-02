defmodule ElixirRestApiWeb.PhotoView do
    use ElixirRestApiWeb, :view
    alias __MODULE__

    def render("show.json", %{photos: photos}) do
        render_many(photos, PhotoView, "photo.json")
    end

    def render("photo.json", %{photo: photo}) do
        %{
            title: photo["title"],
            thumbnailUrl: photo["thumbnailUrl"]
        }
    end
end