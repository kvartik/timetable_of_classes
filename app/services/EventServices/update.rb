module EventServices
class Update

 def initialize(id, title, event_date, group_id, calendar_id)
    @id = id
    @title = title
  @event_date = event_date
  @group_id = group_id
  @calendar_id = calendar_id
end

   def call
    @event = Event.find_by(id: @id)
    @event.update(title: @title, event_date: @event_date, group_id: @group_id, calendar_id: @calendar_id)
end
end
