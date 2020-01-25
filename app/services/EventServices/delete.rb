module EventServices
 class Delete
   def initialize(id)
    @id = id
   end

   def call
      @event = Event.find_by(id: @id)
    #  @event_errors = []
     if @event != nil
       @event.destroy
       result = 'Event deleted'
     else
    #   errors << @event_errors
       result = "Event not deleted"
     end
 end
end
end
