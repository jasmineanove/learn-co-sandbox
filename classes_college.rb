class College
  
  def  inzitialize(name, type, mascot)
    @name = name
    @type = type
    @mascot = mascot
  end
  
end

tamu = Colleges.new("A and M", "Public", "Reveille")
#t and M university^ (the variable)
u_of_minn = Colleges.new("University of Minnesota", "Public", "Golden Gophers")
wesleyan = Colleges.new("Wesleyan", "Private", "Cardinal")
#.new is creating new instances and the method is telling it what that instance is
