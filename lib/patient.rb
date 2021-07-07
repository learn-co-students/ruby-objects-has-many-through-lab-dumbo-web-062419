class Patient
    attr_reader :name, :appointments, :doctors

    @@all = []

    def initialize(name)
        @name = name
        @appointments = []
        @doctors = []
        @@all << self
    end

    def Patient.all
        @@all
    end

    def new_appointment(doctor, date)
        appointment = Appointment.new(date, self, doctor)
    end
end