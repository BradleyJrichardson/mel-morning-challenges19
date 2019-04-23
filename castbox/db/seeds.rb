puts "Start of Seeding..."
Podcast.destroy_all
10.times do
  params = {
    name: Faker::Restaurant.unique.name,
    genre: Faker::Address.unique.full_address,
    channel_image: Faker::Restaurant.type 
  }
  podcast = Podcast.new(params)
  podcast.save


  episodes = rand(6)
  episodes.times do
    params = {
      title: Faker::Name.name,
      mp3_file: Faker::Name.name,
      show_notes: Faker::Lorem.paragraph,
      rating: rand(11),
      podcast_id: podcast.id
    }
    episodes = Episode.new(params)
    episodes.save
  end
end

puts "Seeding Over"
