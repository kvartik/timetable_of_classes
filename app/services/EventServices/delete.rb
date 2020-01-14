module EventServices
 class Delete


   def call
@event = Event.find(params[:id])
@event.destroy
if @event.destroy?
  self.result = 'Delete event'
else
  errors << @event.errors
   end
 end
end
end
