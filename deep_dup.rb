# deep_dup.rb

require 'pry'

class Array

	def deep_dup

		arr2 = self.dup

		arr2.each_with_index { | x, i | arr2[i] = x.dup }

		return arr2

	end



end


arr = [ [ 2, 3 ], [ 4, 5 ] ]

print "arr id:" + "#{arr.object_id}\n".rjust(31)
print "arr[0] id:" + "#{arr[0].object_id}\n".rjust(28)
print "arr[1] id:" + "#{arr[1].object_id}\n\n".rjust(29)

duper = arr.deep_dup

print "duper id:" + "#{duper.object_id}\n".rjust(29)
print "duper[0] id:" + "#{duper[0].object_id}\n".rjust(26)
print "duper[1] id:" + "#{duper[1].object_id}\n\n".rjust(27)


deeper_arr = [
                [ 1, [ 2, 3 ] ],
                [ 4, 5, 6],
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
            ]

deeper_duper = deeper_arr.deep_dup

print "deeper_arr id:" + "#{deeper_arr.object_id}\n".rjust(24)
print "deeper_arr[0] id:" + "#{deeper_arr[0].object_id}\n".rjust(21)
print "deeper_arr[1] id:" + "#{deeper_arr[1].object_id}\n".rjust(21)
print "deeper_arr[0,1] id:" + "#{deeper_arr[0,1].object_id}\n".rjust(19)
print "deeper_arr[0,2] id:" + "#{deeper_arr[0,2].object_id}\n\n".rjust(20)


print "deeper_duper id:" + "#{deeper_duper.object_id}\n".rjust(22)
print "deeper_duper[0] id:" + "#{deeper_duper[0].object_id}\n".rjust(19)
print "deeper_duper[1] id:" + "#{deeper_duper[1].object_id}\n".rjust(19)
print "deeper_duper[0,1] id:" + "#{deeper_duper[0,1].object_id}\n".rjust(17)
print "deeper_duper[0,2] id:" + "#{deeper_duper[0,2].object_id}\n".rjust(17)


