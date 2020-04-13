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

  def self.find_by_name(number)
    @@all.detect {|n| n.name == name}
  end


end