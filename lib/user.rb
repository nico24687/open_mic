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
end
