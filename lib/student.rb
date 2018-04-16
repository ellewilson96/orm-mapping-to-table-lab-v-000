class Student
  attr_accessor :name, :grade
  attr_reader :id

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize(id: nil, name:, grade:)
  end

  def self.create_table 
  end 

  def self.drop_table
  end 

  def self.create 
  end

  def self.save 
  end

  
end
