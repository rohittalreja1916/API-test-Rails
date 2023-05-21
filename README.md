# API-test-Rails

# Stes to Run the Application 
# Create database
  rails db:create
# Run the migration
  rails db:migrate
# Change APi Key in credentials
  EDITOR='code --wait' rails db:credentials
  api_key: 'YOUR_API_KEY'
# Start the server
  rails s

# Temporary API you can use
# id: 1
# url: "https://pokemon-unite-pokemons.p.rapidapi.com/pokemon?page=1&pageSize=48"
# description: "Pokemon Unite API"
# name: "Pokemon Unite"
# host: "pokemon-unite-pokemons.p.rapidapi.com"