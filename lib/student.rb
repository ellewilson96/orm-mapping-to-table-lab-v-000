class Student
  attr_accessor :name, :grade
  attr_reader :id
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize(id: nil, name:, grade:)
  end

  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade INTEGER
        )
        SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table

  end

  def self.create
  end

  def self.save(name, grade)
    DB[:conn].execute("INSERT INTO students (name, grade) VALUES (?, ?)", name, grade)
  end


end
