class Patient 
    
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        patient = self
       Appointment.new(self, doctor, patient)

    end

    def appointments
    Appointment.all.select {|song| song.patient == self}
    end

    def doctors
        Appointment.all.collect {|songs| songs.doctor}
    end


    def self.all 
        @@all
    end

end