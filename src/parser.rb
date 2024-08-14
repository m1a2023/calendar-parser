require "json"

class Month 
  def self.initialize
		@month 	=		Hash.new { |hash, key| 	hash[key]	=	"week---#{key}"}
		4.times { |i|
			@month[i]		=		Week.initialize
		}
		@month
	end
end

class Week
	DaysOfTheWeek = [ 
		"monday", "tuesday", "wednesday", 
  	"thursday", "friday", "saturday", "sunday"
	]

	def	self.initialize
		@week 	= 	Hash.new
		DaysOfTheWeek.each { |day|
			@week[day]	= 	Day.initialize 
		}
		@week
	end
end

class Day 
	def self.initialize
		@day	=		Hash.new 	{ |hash, key| hash[key] = "#{key}---day"}
		@day["task"] =	Hash.new
		@day
	end
	
	def self.addTask
		@task	=		Hash.new 	{ |hash, key| hash[key] =	"#{key}---task"}
		@task
	end
end