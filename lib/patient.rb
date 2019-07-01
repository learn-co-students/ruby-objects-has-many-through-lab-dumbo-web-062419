


class Patient
  attr_accessor :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(doctor, self, date)
    #binding.pry
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    doctors = []
    Appointment.all.select do |appointment|
      appointment.patient == self
      doctors << appointment.doctor
    end
    doctors
  end

  def self.all
    @@all
  end


end
