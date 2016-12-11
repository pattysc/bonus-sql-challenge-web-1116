require "sqlite3"
require "csv"
require 'pry'

db = SQLite3::Database.new ":memory:"

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS dailyshow (
    id INTEGER PRIMARY KEY,
    year INTEGER,
    occupation TEXT,
    showdate TEXT,
    showg TEXT,
    guestlist TEXT
  )
SQL

rows = db.execute(sql)

CSV.foreach("daily_show_guests.csv") do |row|
  db.execute("INSERT INTO dailyshow (year, occupation, showdate, showg, guestlist) VALUES (?, ?, ?, ?, ?)", row[0], row[1], row[2], row[3], row[4])
end

question_one = <<-SQL
  SELECT guestlist, COUNT(guestlist)
  FROM dailyshow
  GROUP BY guestlist
  ORDER BY COUNT(guestlist) ASC;
SQL

question_two = <<-SQL
SELECT year, occupation, COUNT(occupation)
FROM dailyshow
GROUP BY year
ORDER BY COUNT(occupation) ASC
SQL

question_three = <<-SQL
SELECT occupation, COUNT(occupation)
FROM dailyshow
GROUP BY occupation
ORDER BY COUNT(occupation) ASC;
SQL

question_four = <<-SQL
SELECT DISTINCT guestlist
FROM dailyshow
WHERE guestlist LIKE "Bill %";
SQL

question_five = <<-SQL
  SELECT showdate
  FROM dailyshow
  WHERE guestlist = "Patrick Stewart"
SQL

question_six = <<-SQL
  SELECT year, COUNT(guestlist)
  FROM dailyshow
  GROUP BY year
  ORDER BY COUNT(guestlist) ASC;
SQL

question_seven = <<-SQL
  SELECT showg, COUNT(showg)
  FROM dailyshow
  GROUP BY year
  ORDER BY COUNT(showg) ASC;
SQL


lol = db.execute(question_two)
puts lol
