class Person
  def Person.people
    @people ||= []
  end

  attr_reader :name, :hobbies, :friends

  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    Person.people << self
  end
  def has_hobby(hobby)
    @hobbies << hobby
  end
  def has_friend(friend)
    @friends << friend
  end
