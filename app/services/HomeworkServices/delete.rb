module HomeworkServices
 class Delete
   def initialize(id)
     @id = id
   end

   def call
     @homework = Homework.find_by(id: @id)
    if @homework != nil
       @homework.destroy
       result = 'Homework deleted'
     else
       result = 'Homework not deleted'
   end
 end
end
end
