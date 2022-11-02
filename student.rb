require_relative 'person'

class Student < Person
  def initialize(classroom, *sups)
    super(*sups)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
