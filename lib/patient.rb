require"pry"
class Patient

  attr_reader :name, :appointment, :doctor

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

  def appointment
    Appointment.all.select do |appointment|
      appointments.patient == self
    end
  end
end
