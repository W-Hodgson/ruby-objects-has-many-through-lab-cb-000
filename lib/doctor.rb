class Doctor

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patietn)

  end

end
