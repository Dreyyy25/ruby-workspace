class Village88Training 
    attr_accessor :mentor
    @@batch_number = 0

    def initialize(year, month)  #constructor
        @batch_year = year 
        @batch_month = month 
        @@batch_number += 1

        puts "Created #{@@batch_number}"
    end
    def display_info  #instance method   
        puts "\tBatch Number: #{@@batch_number}"
        puts "\tBatch Year: #{@batch_year}" 
        puts "\tBatch Month started: #{@batch_month}"
    end 
    def self.get_latest_batch #class method
        @@batch_number
    end
end 

# now using above class to create objects 
batch1 = Village88Training.new(2021, "January") 
batch1.display_info 

batch2 = Village88Training.new(2022, "January") 
batch2.display_info


puts "\nThe latest batch number is %d." % Village88Training.get_latest_batch

batch1.mentor = "Michael"
puts "Mentor is: " + batch1.mentor