class Plant
  attr_accessor :name
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
    # binding.pry
  end
end