class Question
  OPERATIONS = {:+ => "plus", :- => "minus", :* => "multiplied by"}
  OP_KEYS = OPERATIONS.keys
  # , :/ => "divided by"

  def initialize
    @num1 = rand(10)
    @num2 = rand(10)
    @operator = OP_KEYS[rand(OP_KEYS.size)]
    # @question = "What is #{@num1} #{OPERATIONS[@operator]} #{@num2}"
    @answer = eval"#{@num1}#{@operator}#{@num2}"
  end

  def ask_question 
    "What is #{@num1} #{OPERATIONS[@operator]} #{@num2}?"
  end

  def is_correct(player_ans)
    player_ans == @answer
  end
end

# q1 = Question.new
# q2 = Question.new
# q3 = Question.new

# puts q1.question
# puts q2.question
# puts q3.question