module HomeworkServices
 class Update
   def initialize(id, event_id, text)
     @id = id
     @event_id = event_id
     @text = text
   end

   def call
     @homework = Homework.find_by(id: @id)
     @homework.update(event_id: @event_id, text: @text)
 end
end
end
