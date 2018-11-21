class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all =[]
  end


end
