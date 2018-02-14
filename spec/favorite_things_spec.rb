require('favorite_things')
require('pry')
require('rspec')

describe("Favorites") do
  describe('.all') do
    it ('list is empty at first') do
      expect(Favorites.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves an item to the list of items") do
      favorites = Favorites.new("music")
      favorites.save()
      expect(Favorites.all()).to(eq([favorites]))
    end
  end

end
