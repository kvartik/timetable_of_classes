module NotebookServices
 class Delete
   def initialize(id)
     @id = id
   end

   def call
     @notebook = Notebook.find_by(id: @id)
    if @notebook != nil
       @notebook.destroy
       result = 'Notebook deleted'
     else
       result = 'Notebook not deleted'
   end
 end
end
end
