module GroupServices
class Update

   def initialize(id, group, event_id)
     @id =id
     @group = group
     @event_id = event_id
   end


   def call
    @group = Group.find_by(id: @id)
    @group.update(group: @group, event_id: @event_id)
end
end
end
