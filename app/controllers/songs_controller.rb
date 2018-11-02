class SongsController < ActionController::API
  def index
    songs = Song.order("RANDOM()").limit(10)
    render :json => songs.as_json(only: [:id, :title, :artist, :year]), status: :ok
  end
end
