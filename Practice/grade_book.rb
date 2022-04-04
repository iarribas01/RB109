# method
# determines the average of three scores passed
# input: 3 integers representing scores
# middle val: mean of 3 scores
# letter associated with grade


# two parts: determine average, determine letter
# rules:no need to worry about input <0 or >100

def get_grade(score1, score2, score3)
  # find average
  average = calc_avg(score1, score2, score3)

  # determine letter grade
  get_letter_grade(average)
end

def calc_avg(score1, score2, score3)
  (score1 + score2 + score3).to_f / 3
end

def get_letter_grade(average)
  case average
  when (90..100) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  else                'F'
  end
end

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"