class Favorites
  @@list = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all()
   @@list
  end

  def save()
    @@list.push(self)
  end
end
