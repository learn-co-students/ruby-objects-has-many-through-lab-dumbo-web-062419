require 'pry'

class Doctor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(self, patient, date)
    end

    def appointments
        Appointment.all.select { |appointments| appointments.doctor == self }
    end

    def patients
        appointments.map {|appointment| appointment.patient}
    end
end

# binding.pry