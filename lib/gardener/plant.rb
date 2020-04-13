class Plant
  attr_accessor :name, :number
  @@all = []
  
  def initialize(name:, number:)
    @name = name 
    @number = number
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.find_by_name(number:)
    @@all.select {|n| n.name == name}
    # binding.pry
  end


end