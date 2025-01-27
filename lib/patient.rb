class Patient
    @@all = [] 

    attr_accessor :name 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 
    
    def new_appointment(doctor, date) #why does the order affect def doctors?
        Appointment.new(date, self, doctor)
    end 

    def appointments 
        Appointment.all.select{|appt| appt.patient == self}
    end 

    def doctors 
        appointments.map{|appt| appt.doctor}
    end 


end 