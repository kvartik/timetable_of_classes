
module GroupServices
 class Delete
   def initialize(id)
     @id = id
   end

   def call
     @groups = Group.find_by(id: @id)
     if @groups != nil
       @groups.destroy
      result = 'Group deleted'
     else
        result = "Group not deleted"
   end

 end
end
end
