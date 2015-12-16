require_relative 'Client'

test_drive = Client.new RedHeadDuck.new,
                        MallardDuck.new,
                        TurkeyAdapter.new(Turkey.new)

test_drive.run_test
# ---Testing the RedHeadDuck instance---
# Quack...
# I'm flying
# I'm swimming
# 
# ---Testing the MallardDuck instance---
# Quack... Quack...
# I'm flying
# I'm swimming
# 
# ---Testing the TurkeyAdapter instance---
# Gobble gobble
# I'm flying a short distance
# I'm flying a short distance
# I'm flying a short distance
# I'm flying a short distance
# I'm flying a short distance
# Jump on the raft


