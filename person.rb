require 'securerandom'
require_relative 'decorators/nameable'
require_relative 'decorators/capitalize_decorator'
require_relative 'decorators/trimmer_decorator'
require_relative 'rental'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id ||= rand(1..500)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? && @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  private

  def of_age?
     @age >= 18
  end
end
