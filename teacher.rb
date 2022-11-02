require_relative 'person'

class Teacher < Person
  def initialize(specialization, *sups)
    super(*sups)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
