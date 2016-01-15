load 'db/seeds/advisors.rb'
load 'db/seeds/workers.rb'

#students dependent on advisors
load 'db/seeds/students.rb'

#messages dependent on users (advisor / worker)
load 'db/seeds/messages.rb'

#coop dependent on students
load 'db/seeds/coops.rb'
load 'db/seeds/audits.rb'
load 'db/seeds/cop_outs.rb'