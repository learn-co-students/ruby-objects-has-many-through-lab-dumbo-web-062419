class Appointment
    attr_reader :date, :patient, :doctor
    
    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        doctor.appointments << self
        doctor.patients << patient
        patient.appointments << self
        patient.doctors << doctor
        @@all << self
    end

    def Appointment.all
        @@all
    end

end