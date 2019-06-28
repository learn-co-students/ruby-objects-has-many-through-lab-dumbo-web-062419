require 'pry'

class Patient
    attr_accessor :doctor, :appointment, :date

    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    def appointments
        Appointment.all.select { |appointments| appointments.patient == self }
    end

    def doctors
        appointments.map {|appointment| appointment.doctor}
    end
    def new_appointment(doctor, date)
        Appointment.new(doctor, date, self)
    end

end

# binding.pry