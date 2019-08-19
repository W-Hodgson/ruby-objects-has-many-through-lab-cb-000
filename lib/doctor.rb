class Doctor

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def patients
    Appointment.all.map { |appointment| appointment.patient }
  end

  def appointments
    Appointment.all
  end

  def self.all
    @@all
  end

end
