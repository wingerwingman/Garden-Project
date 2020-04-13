class Plant
  attr_accessor :name, :plant_id
  @@all = []
  
  def initialize(name:, plant_id)
    @name = name 
    @drink_id = drink_id 
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.find_by_name(name)
    @@all.select {|n| n.name == name}
  end


end