class Question

  def initialize
    @answer = nil
  end

  def generate_numbers
    number1 = rand(1..20)
    number2 = rand(1..20)
    @answer = (number1 + number2).to_s
    [number1, number2]
  end

  def check_answer(answer_input)
    @answer == answer_input
  end
end

