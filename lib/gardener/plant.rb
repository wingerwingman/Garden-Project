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

  def name_and_description
    self.name + ":\n" + self.description
  end

end