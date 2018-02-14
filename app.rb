require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/favorite_things')
