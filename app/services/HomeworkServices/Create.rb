module HomeworkServices
 class Create
   def initialize(event_id, text)
     @event_id = event_id
     @text = text
   end

   def call
     @homework = Homework.new(event_id: @event_id, text: @text)
     if @homework.valid?
       @homework.save
     else
       errors << homework.errors
   end
 end
end
end
