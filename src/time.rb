require 	"json"
require 	"Time"

class Month 
	def initialize
		@month 	=		Hash.new { |hash, key| 	hash[key]	=	"week---#{key}"}
		4.times { |i|
			@month[i]		=		Week.new.get_week
		}
		#return
		@month
	end
	
	def get_month
		@month
	end 
end

class Week
	DaysOfTheWeek = [ 
		"monday", "tuesday", "wednesday", 
  	"thursday", "friday", "saturday", "sunday"
	]
	
	def	initialize
		@week 	= 	Hash.new
		DaysOfTheWeek.each { |day|
			@week[day]	= 	Day.new.get_day
		}

		#return 
		@week
	end

	def get_week
		@week
	end
end

class Day 
	def initialize
		@day	=		Hash.new 	{ |hash, key| hash[key] = "#{key}---day"}
		@tasks = 	[ ]
			
		#return
		@day	
	end

	def get_day
		@day
	end

	def add_task label
		@tasks  <<  Task.new(label)  			 	
	end

	
end

class Task
	attr_reader :creation_time

	def initialize
		@creation_time = Time.now
		@task = 'task'
	end

	def initialize task 
		@creation_time = Time.now
		@task = task
	end

	def get_task
		@task
	end

	def get_creation_time
		@creation_time
	end

	def details 
		{ task: @task, created_at: @creation_time }
	end
end