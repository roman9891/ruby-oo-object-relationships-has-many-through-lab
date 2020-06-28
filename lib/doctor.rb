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

    def appointments
        Appointment.all.select do |each_appointment_object|
            puts "select"
            puts each_appointment_object
            each_appointment_object.doctor == self
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.collect do |each_appointment_object|
            puts "collect"
            puts each_appointment_object
            puts each_appointment_object.patient
            each_appointment_object.patient
        end
    end
end