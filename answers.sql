-- Write your queries here!
question_one = <<-SQL
  SELECT COUNT(guestlist)
  FROM dailyshow
  GROUP BY guestlist
  ORDER BY COUNT(guestlist) ASC;
SQL
-- answer: Fareed Zakaria, 19 times

question_two = <<-SQL
SELECT year, occupation, COUNT(occupation)
FROM dailyshow
GROUP BY year, occupation
ORDER BY COUNT(occupation) ASC;
SQL

question_three = <<-SQL
SELECT occupation, COUNT(occupation)
FROM dailyshow
GROUP BY occupation
ORDER BY COUNT(occupation) ASC;
SQL

-- answer: actor, 596 times

question_four = <<-SQL
SELECT DISTINCT guestlist
FROM dailyshow
WHERE guestlist LIKE "Bill %";
SQL

-- answer: 17 people named Bill
-- Bill Maher
-- Bill Goldberg
-- Bill O'Reilly
-- Bill Hemmer
-- Bill Clinton
-- Bill Moyers
-- Bill Kristol
-- Bill Gates
-- Bill Bradley
-- Bill Bishop
-- Bill Russell
-- Bill Cosby
-- Bill O' Reilly
-- Bill Dedman
-- Bill de Blasio
-- Bill Hader
-- Bill Browder

question_five = <<-SQL
  SELECT showdate
  FROM dailyshow
  WHERE guestlist = "Patrick Stewart"
SQL

-- answer:
-- 4/12/00
-- 4/21/03
-- 11/7/13

question_six = <<-SQL
  SELECT year, COUNT(guestlist)
  FROM dailyshow
  GROUP BY year
  ORDER BY COUNT(guestlist) ASC;
SQL

-- answer: 2000, 169 guests

question_seven = <<-SQL
  SELECT year, showg, COUNT(showg)
  FROM dailyshow
  GROUP BY year, showg
  ORDER BY COUNT(showg) ASC, year ASC
SQL
