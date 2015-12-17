$ ->
  $('#movie_search').typeahead
      name: "movie"
          remote: "/movies/autocomplete?query=%QUERY"
