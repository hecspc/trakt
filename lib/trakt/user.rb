module Trakt
  class User
    include Connection
    def library_shows_watched(data)
      require_settings %w|username password apikey|
      get('/user/library/shows/watched.json', data[:user])
    end
    def library_shows_collection(data)
      require_settings %w|username password apikey|
      post('/user/library/shows/collection.json', data)
    end
    def library_shows_all(data)
      require_settings %w|username password apikey|
      post('/user/library/shows/all.json', data)
    end
    def library_movies_watched(data)
      require_settings %w|username password apikey|
      post('/user/library/movies/watched.json', data)
    end
    def library_movies_collection(data)
      require_settings %w|username password apikey|
      post('/user/library/movies/watched.json', data)
    end
    def library_movies_all(data)
      require_settings %w|username password apikey|
      post('/user/library/movies/all.json', data)
    end

    def last_activity(data)
      require_settings %w|username password apikey|
      post('/user/lastactivity', data)
    end
  end
end
