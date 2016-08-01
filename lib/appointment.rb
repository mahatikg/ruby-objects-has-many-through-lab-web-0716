class Appointment
  
  attr_accessor :doctor, :patient
  attr_reader :date

  #when I want to 'manually' write the reader method the tests
  #always fail. It shouldn't matter should it?

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.appointments << self
  end
end
