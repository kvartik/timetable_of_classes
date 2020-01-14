module GroupServices
 class Create
   def initialize(group, event_id)
     @group = group
     @event_id = event_id
   end

   def call
     @groups = Group.new(group: @group, event_id: @event_id)
     if @groups.valid?
       @groups.save
     else
        errors << groups.errors
   end
 end
end
end
