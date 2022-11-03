require_relative 'decorator'

class Capitalize < Decorator
  def correct_name
    name = @nameable.correct_name.capitalize
  end
end