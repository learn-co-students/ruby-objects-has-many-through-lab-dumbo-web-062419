class Doctor
    attr_reader :name, :appointments, :patients

    @@all = []

    def initialize(name)
        @name = name
        @appointments = []
        @patients = []
        @@all << self
    end

    def Doctor.all
        @@all
    end

    def new_appointment(patient, date)
        appointment = Appointment.new(date, patient, self)
    end
end