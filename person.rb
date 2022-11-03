require 'securerandom'
require_relative 'decorators/nameable'
require_relative 'decorators/capitalize_decorator'
require_relative 'decorators/trimmer_decorator'


class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = SecureRandom.uuid + Time.now.to_i.to_s
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age || @parent_permission
  end

  def correct_name
    @name
  end  

  private

  def of_age?
    return true if @age >= 18

    false
  end
end
