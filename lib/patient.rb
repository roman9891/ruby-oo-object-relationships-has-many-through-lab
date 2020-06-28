class Patient
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |each_appointment_object|
            each_appointment_object.patient == self
        end
    end

    def doctors
        self.appointments.collect do |each_appointment_object|
            each_appointment_object.doctor
        end
    end
end