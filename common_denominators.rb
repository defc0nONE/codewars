=begin

Sunday 13th May - approx. 1 hour

Thought process
I wrote these notes on paper, so they might appear a bit random. Wasn't aware (or have completely forgotten from secondary school) what LCM was, so had to check Khan Academy first to get a refresher.

It's certainly not elegant if you're aiming for sheer minimalism/runtime (shows my lack of confidence in reduce/map), but it was a tough one for a noob like me and this is how I managed to solve it. :-D

- input is the array of arrays
- take the 2nd element of each array (as it's a fraction, there'll only be 2) and store in new array
- find the LCM (there's a built in ruby method to do just that) and store in variable
- in a result array, push two elements:
	nominator: divide LCM by denominator of fraction and then multiply by nominator (in case it's more than 1 - as discovered when I didn't pass all cases)
	denominator: LCM of the fractions
- print the result

=end


def convertFracts(lst)
	fractions = lst
	denominators = []
	result = []
	x = 0
	y = 0

	while x < fractions.length 
		denominators.push(fractions[x][-1])
		x += 1
	end

	lcm = denominators.reduce(1, :lcm)

	while y < fractions.length
		result.push([lcm / fractions[y].last * fractions[y].first, lcm])
		y += 1
	end

	result
end