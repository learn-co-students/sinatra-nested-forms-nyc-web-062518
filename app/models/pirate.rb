class Pirate

  @@all = []

  attr_reader :name, :height, :weight

  def initialize(params)
    @name = params[:name]
    @height = params[:height]
    @weight = params[:weight]
    @@all << self
  end

  def self.all
    @@all
  end
end
