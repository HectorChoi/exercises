# Grade book
# try to use case!

def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3.0
  if average >= 90
    "A"
  elsif average >= 80
    "B"
  elsif average >= 70
    "C"
  elsif average >= 60
    "D"
  else
    "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
