# API-test-Rails

This is just a test trial of how to use api in rails.

## Installation

Use the in-built rails bundle to install the gems.

```bash
bundle install
```

## System Requirements

- Ruby Version 3.0.5
- Rails Version 7.0.4.3
- SqLite Version 1.4

## Usage
Make Sure you have Proper Ruby and Rails Version Installed.

- Create Database
```bash
  rails db:create
```

- Run the migration
```bash  
  rails db:migrate
```

Change APi Key in credentials
```  
  EDITOR='code --wait' rails db:credentials
```

- Add this in your credentials.yml
```  
  api_key: 'YOUR_API_KEY'
```

- Start the server
```  
  rails s
```

## Temporary API you can add in Model
- Url: "https://pokemon-unite-pokemons.p.rapidapi.com/pokemon?page=1&pageSize=48"
- Description: "Pokemon Unite API"
- Name: "Pokemon Unite"
- Host: "pokemon-unite-pokemons.p.rapidapi.com"

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

