class Person
  def name=(n)
    @first, @last = n.split
  end

  def name
    "#{@first} #{@last}"
  end

  def first_name
    @first
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name
puts person1.first_name
