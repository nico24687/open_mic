class User
  attr_reader :name

  def initialize(name)
    @name = name
    @jokes = []
  end

  def jokes 
    @jokes
  end 

  def learn(joke)
    @jokes << joke 
  end

  def tell(user, joke)
    user.learn(joke)
  end 

  def perform_routine_for(user)
    self.jokes.each do |joke|
      tell(user,joke)
    end
  end 

  def learn_routine(filename)
    contents = CSV.open(filename, headers: true)
    contents.each do |row|
      self.jokes << row
    end 
  end 

end
