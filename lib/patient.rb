class Patient

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end

  def doctors
    Appointment.all.map { |appointment| appointment.doctor  }
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
end
