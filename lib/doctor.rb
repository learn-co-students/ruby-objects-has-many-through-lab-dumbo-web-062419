require 'pry'
class Doctor
    attr_accessor :name
@@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        @name
    end

    def new_appointment(name, date)
       Appointment.new(name, date, self)
    end

    def appointments
        Appointment.all.select do|appointment|
            appointment.doctor == self
        end
    end

    def patients
        Appointment.all.collect do|app|
            app.patient
        end
    end






end

# binding.pry
