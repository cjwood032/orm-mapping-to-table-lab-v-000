class Student
attr_accessor :name, :grade
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize(name, grade, id=nil)
    @id, @name, @grade = id, name, grade
  end #def initialize
###################################
  def self.create_table
    sql= <<-TEXT
      CREATE TABLE IF NOT EXISTS students (id INTEGER PRIMARY KEY, name TEXT, grade TEXT)
    TEXT
    DB[:conn].execute(sql)
  end #end the create table method
end
