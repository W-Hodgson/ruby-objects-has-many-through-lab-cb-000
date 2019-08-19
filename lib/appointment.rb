class Appointment

  @@all = []

  attr_accessor :date, :patient, :doctot

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
  end

end
