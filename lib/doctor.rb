

class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(self, date, patient)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    patients = []
    Appointment.all.select do |appointment|
      #binding.pry
      appointment.doctor == self
      patients << appointment.patient
    end
    patients
  end




  def self.all
    @@all
  end


end
