class Doctor

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.collect do |appointment|

    end
  end


end
