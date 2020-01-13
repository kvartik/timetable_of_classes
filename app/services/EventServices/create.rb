module EventServices
 class Create
def initialize(title, event_date, group_id, calendar_id)
  @title = title
  @event_date = event_date
  @group_id = group_id
  @calendar_id = calendar_id
end
   def call
     @event = Event.new(title: @title, event_date: @date, group_id: @group_id, calendar_id: @calendar_id)
     if @event.valid?
       @event.save
     else
       errors << event.errors
     end
  end
 end
end
