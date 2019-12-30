

module EventServices
 class Create < SupportService::GeneralService
   def initialize(data)
     super
   end

   def call
     event = Event.new(title: data[:title], date: data[:date], group: data[:group], calendar: data[:calendar])
     if event.valid?
       event.save
       self.result = "Event created"

     else
       errors << event.errors

     end
   end
  end
 end
