require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/favorite_things')


get('/') do
  @list = Item.all()
  erb(:list)
end

post('/') do
  name = params["name"]
  rank = params["rank"]
  item = Item.new(name, rank)
  item.save()
  Item.sort()
  @list = Item.all()
  erb(:list)
end

get('/item/:id') do
  @item = Item.find(params[:id])
  erb(:item)
end
