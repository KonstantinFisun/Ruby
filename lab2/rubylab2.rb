class Department
  attr_accessor :name,:phone
  
  def initialize (name, phone)
  @name = name
    self.phone = phone
  end
  
   def info
    puts("#{name} : #{phone}")
  end
  
  def main
  person1 = Department.new("Олеся", "89549270306")
  person2 = Department.new("Наталья", "89069852101" )

  person1.info
  person2.info
end

if __FILE__ == $0
    main
end
end

