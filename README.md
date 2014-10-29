# Express Config
### Express 4 Config boilerplate

## Download
The source is available for download from GitHub. Alternatively, you can install using Node Package Manager (npm):

`npm install express-config`

## Example
```coffeescript
expressConfig = require 'express-config'
expressConfig(app, {
    session : {
        secret : 'mySecret!',
        maxAge : new Date(Date.now() + 7200000), # 2h Session lifetime
        path : '/'
    }
})
```
## Development
### Dependencies

This command needs to be ran first if CoffeeScript is not installed on your system

* run `sudo npm install -g coffee-script`

### Setup

Install all of the dependencies

* run `npm install`

The following command will watch and compile Coffeescript
* run `gulp`
