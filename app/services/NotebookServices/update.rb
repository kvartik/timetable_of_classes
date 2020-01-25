module NotebookServices
 class Update
   def initialize(id, group_id, text)
     @id = id
     @group_id = group_id
     @text = text
   end

   def call
     @notebook = Notebook.find_by(id: @id)
     @notebook.update(group_id: @group_id, text: @text)
 end
end
end
