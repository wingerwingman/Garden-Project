class Plant
  attr_accessor :name, :instructions, :description
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.find_by_name(number)
    @@all.find {|n| n.name == name}
  end
end