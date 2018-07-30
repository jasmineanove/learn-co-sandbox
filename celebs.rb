require 'colorize'
class Celeb_quiz 
  def initialize 
    @tally = 0 
     @characters = {"Tom Holland" => "spider-man",
                  "Karlie Kloss" => "joshua kushner",
                  "Ariana Grande" => "pete davidson",
                  "Kim Kardashian" => "kanye west",
                  "Kylie Jenner" => "stormi", 
                  "Chris Pratt" => "andrew",
                  "Taylor Swift" => "2006",
                  "Demi Lovato" => "heroine",
                  "Selena Gomez" => "wizards of waverly place",
                  "Justin Bieber" => "hailey baldwin"}
  end 
  
  def q1
    puts "What was Tom Holland's largest role?".red
    answer = gets.strip.downcase
    if answer == @characters["Tom Holland"].blue
      puts "Good Job!"
      @tally += 10 
    else 
      puts "No, that's wrong.".blue
      @tally -= 5 
    end 
  end 
  
  def q2
  puts "Who is Karlie Kloss engaged to??"
  answer = gets.strip.downcase 
  if answer == @characters["Karlie Kloss"].light_green
   puts "Good Job!".light_green
   @tally += 10 
  else 
   puts "No, that's wrong.".green
   @tally -= 5 
  end
end
  
  def q3
  puts "Who is Ariana Grande engaged to??".light_red
  answer = gets.strip.downcase
  if answer == @characters["Ariana Grande"] 
   puts "Good Job!".light_magenta
   @tally += 10 
  else 
   puts "No, that's wrong.".magenta
   @tally -= 5 
  end
end
  
  def q4
  puts "Who is Kim Kardashian married to?".light_blue
  answer = gets.strip.downcase
   if answer == @characters["Kim Kardashian"] 
   puts "Good Job!".cyan
   @tally += 10 
  else 
   puts "No, that's wrong.".light_cyan
   @tally -= 5 
  end
end
  
  def q5 
    puts "What is Kylie Jenner's daughter's name?"
    answer = gets.strip.downcase
    if answer == @characters["Kylie Jenner"]
      puts "Good Job!".light_yellow
      @tally += 10 
    else 
      puts "No, that's wrong.".yellow
      @tally -= 5 
    end
  end
    
  def q6 
    puts "Chris Pratt is whose favorite actor?"
    answer = gets.strip.downcase
    if answer == @characters["Chris Pratt"]
     puts "Good Job!".light_red
     @tally += 10 
   else 
     puts "No, that's wrong.".red
     @tally -= 5 
   end 
 end
   
   def q7 
     puts "When was Taylor Swift's first album released?"
     answer = gets.strip.downcase
     if answer == @characters["Taylor Swift"]
       @tally += 10
       puts "Good Job!".light_blue
     else 
      puts "No, that's wrong.".blue
       @tally -= 5 
     end
  end
    
  def q8
    puts "What drug did Demi Lovato recently overdose on?".magenta
    answer = gets.strip.downcase
    if answer == @characters["Demi Lovato"]
      puts "Good Job!".light_magenta
      @tally += 10 
    else
      puts "No, that's wrong.".red
      @tally -= 5 
    end 
  end
  
  def q9
    puts "What Disney T.V. show is Selena Gomez famous for?".cyan
    answer = gets.strip.downcase
    if answer == @characters["Selena Gomez"]
      puts "Good Job!".light_cyan
      @tally += 10 
    else
      puts "No, that's wrong.".light_red
      @tally -= 5 
    end 
  end
  
  def q10
    puts "Who is Justin Bieber engaged to?".green
    answer = gets.strip.downcase
    if answer == @characters["Justin Bieber"]
      puts "Good Job!".light_green
      @tally += 10 
    else
      puts "No, that's wrong.".green
      @tally -= 5 
    end 
  end
  
   def score 
      q1
      q2
      q3
      q4
      q5
      q6
      q7
      q8
      q9
      q10
      puts "You have earned a score of #{@tally}!".light_cyan
    end 

end 

quiz = Celeb_quiz.new 
quiz.score