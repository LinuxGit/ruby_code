class ScoreKeeper
  def initialize
    @total_score = @count = 0
  end

  def <<(score)
    @total_score += score
    @count += 1
    self
  end

  def average
    fail "No scores." if @count.zero?
    (Float(@total_score) / @count).round(2)
  end
end

scores = ScoreKeeper.new
scores << 10 << 20 << 40
puts "Average Scores: #{scores.average}"
