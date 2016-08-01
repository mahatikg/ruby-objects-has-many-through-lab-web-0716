class Patient
  attr_accessor :doctor, :appointments, :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    #binding.pry
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    #binding.pry
    self.appointments.collect do |appointment|
      appointment.doctor
    end
    
  end
end
