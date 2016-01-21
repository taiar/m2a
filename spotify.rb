require 'rspotify'

RSpotify.authenticate("37d7b647ebad4d51ad5a3b239b39596e", "b2a01daaa0364f29a8311d3b2d4fb0c7")

usuario = "taiar"

taiar = RSpotify::User.find(usuario)
taiar_playlists = taiar.playlists

puts "#{taiar_playlists.length} playlists encontradas para o usuario #{usuario}"
puts

taiar_playlists.each { |e|
  musicas = e.tracks
  puts "Playlist #{e.name}:"
  puts "\t#{musicas.length} faixas nessa lista"
  puts
  musicas.each { |musica|
    puts "\t - #{musica.artists[0].name} - #{musica.name};"
  }
  puts
}
