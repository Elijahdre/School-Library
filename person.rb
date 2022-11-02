require 'securerandom'

class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = SecureRandom.uuid + Time.now.to_i.to_s
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age || @parent_permission
  end

  private

  def of_age?
    return true if @age >= 18

    false
  end
end
