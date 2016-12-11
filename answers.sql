-- Write your queries here!
question_one = <<-SQL
  SELECT COUNT(guestlist)
  FROM dailyshow
  GROUP BY guestlist
  ORDER BY COUNT(guestlist) ASC;
SQL
answer: Fareed Zakaria, 19 times

question_two = <<-SQL
SELECT occupation, COUNT(occupation)
FROM dailyshow
GROUP BY year
ORDER BY year ASC;
SQL

question_three = <<-SQL
SELECT occupation, COUNT(occupation)
FROM dailyshow
GROUP BY occupation
ORDER BY COUNT(occupation) ASC;
SQL

answer: actor, 596 times

question_four = <<-SQL
SELECT COUNT(guestlist)
FROM dailyshow
WHERE guestlist LIKE "Bill%";
SQL

answer: 56

question_five = <<-SQL
  SELECT showdate
  FROM dailyshow
  WHERE guestlist = "Patrick Stewart"
SQL

answer:
4/12/00
4/21/03
11/7/13

question_six = <<-SQL
  SELECT year, COUNT(guestlist)
  FROM dailyshow
  GROUP BY year
  ORDER BY COUNT(guestlist) ASC;
SQL

answer: 2000, 169 guestlist

question_seven = <<-SQL
  SELECT showg, COUNT(showg)
  FROM dailyshow
  GROUP BY year
  ORDER BY COUNT(showg) ASC;
SQL
