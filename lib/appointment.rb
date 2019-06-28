class Appointment
    attr_reader :doctor, :patient, :date

    @@all = []

    def initialize(doctor, date, patient)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def self.all
        @@all
    end

end
