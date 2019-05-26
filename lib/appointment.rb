class Appointment

  attr_reader :date, :patient, :doctor

  def initialize(date, patient, doctor)
    @@all << self
    @date = date
    @patient = patient
    @doctor = doctor
  end

  @@all = []

  def self.all
    @@all
  end
end