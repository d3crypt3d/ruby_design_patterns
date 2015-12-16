require_relative 'Client'

test_drive = Client.new(Duck.new,TurkeyAdapter.new(Turkey.new))
test_drive.run_test
# ---Testing the Duck instance
# quack
# I'm flying
# 
# ---Testing the TurkeyAdapter instance
# Gobble gobble
# I'm flying a short distance
# I'm flying a short distance
# I'm flying a short distance
# I'm flying a short distance
# I'm flying a short distance

