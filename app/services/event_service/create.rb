module EventServices
 class Create < SupportService::GeneralService
   def initialize(data)
     super
   end

   def call
     event = Event.new(title: data[:title], date: data[:date])
     if event.valid?
       event.save
       self.result = "Event created"
       Success(self)
     else
       errors << event.errors
       Failure(self)
     end
   end
  end
 end
