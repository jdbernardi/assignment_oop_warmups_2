
class Tweeter

	include Enumerable


  def initialize

      @tweets = [ ]

  end




  def tweet( message )

    message.length < 144 ? @tweets << message : @tweets << message[0..144]

  end




  def each

		num = 0

		until num == @tweets.length do

			yield ( @tweets[num] )

			num += 1

		end

  end


end


t = Tweeter.new

t.tweet( "Lorem Ipsum " * 300 )
t.tweet( "Hello There" * 5 )
t.each { | x | puts x }
t.map { | x | x.upcase }