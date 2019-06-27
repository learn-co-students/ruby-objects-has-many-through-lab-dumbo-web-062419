class Doctor 
    attr_reader :name
    @@all = []

    def initialize(name)
    @name = name
    @@all << self
    end

    def new_appointment(appt_name,  appt_patient)
    doctor = self
    song = Appointment.new(appt_name, doctor, appt_patient)

    end

    def appointments
    Appointment.all.select {|appt| appt.doctor == self} 
    
    end

    def patients
        Appointment.all.collect {|appt| appt.patient}
    end


   def  self.all
    @@all
   end

end