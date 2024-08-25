require_relative '../src/time.rb'
require "json"

t = Task.new("show code")
puts "TASK\n", t.details, "\n"


d = Day.new
d.add_task("tidy room")
puts "DAY\n", d.get_day, "\n"

w = Week.new
puts "WEEK\n", w.get_week, "\n"

m = Month.new
puts "MONTH\n", m.get_month, "\n"
