module NotebookServices
 class Create
def initialize(text, group_id)
  @text = text
  @group_id = group_id
end
   def call
     @notebook = Notebook.new(text: @text, group_id: @group_id)
     if @notebook.valid?
       @notebook.save
     else
       errors << notebook.errors
     end
  end
 end
end
