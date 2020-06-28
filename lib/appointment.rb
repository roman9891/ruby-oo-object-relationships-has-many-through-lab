class Appointment
    attr_accessor :date, :doctor, :patient
    @@all = []
    def initialize(date, patient, doctor)
        #puts date
        @date = date
        puts @date
        @patient = patient
        @doctor = doctor
        @@all << self
        #puts self
    end

    def self.all
        @@all
    end
end