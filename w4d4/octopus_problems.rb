$FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"


# Sluggish Octopus
# Find the longest fish in O(n^2) time.
#  Do this by comparing all fish lengths to all other fish lengths

def sluggish_octopus(fish)
  longest_fish=""
    fish.each do |el1|
      fish.each do |el2|
        if el1.length > el2.length
          longest_fish = el1
        end
      end
    end
    longest_fish
end

p "Slugging_octopus : O(n^2) => #{sluggish_octopus($FISH)}"  # "fiiiissshhhhhh"

# Dominant Octopus
# Find the longest fish in O(n log n) time

def dominant_octopus(fish)
    return fish if fish.length < 2
    mid = fish.length / 2
    left = dominant_octopus(fish[0...mid])
    right = dominant_octopus(fish[mid+1..-1])
    merge_sort(left,right)
end

def merge_sort(left,right)
  merged=[]

  until left.empty? || right.empty?
    if left[0].length < right[0].length
      merged << left.shift
    else merged << right.shift
    end
  end
  merged + left + right
end

long_fish = dominant_octopus($FISH)
p "Dominant Octopus : O(n log n) => #{long_fish[-1]}"


# Clever Octopus
# Find the longest fish in O(n) time.
# The octopus can hold on to the longest fish
# that you have found so far
# while stepping through the array only once.

def clever_octopus(fish)
  fish.max_by{|🐠|🐠.length}
end
p "Clever Octopus : O(n) => #{clever_octopus($FISH)}"



# Dancing Octopus
$tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down",
               "left",  "left-up" ]

# Slow DanceGiven a tile direction, iterate through a tiles array to
# return the tentacle number (tile index) the octopus must move.
# This should take O(n) time.

def slow_dance(tile,tiles_array)
  tiles_array.index(tile)
end

p "slow_dance : O(n) => #{slow_dance("up",$tiles_array)}"
p "slow_dance : O(n) => #{slow_dance("right-down",$tiles_array)}"



# Constant Dance!
# Now that the octopus is warmed up,
# let's help her dance faster.
#  Use a different data structure
#  and write a new function so that
#   you can access the tentacle number in O(1) time.



tiles_hash = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def constant_dance(title, tiles_hash)
  tiles_hash[title]
end

p "constant_dance : O(1) => #{constant_dance("up", tiles_hash)}"
p "constant_dance : O(1) => #{constant_dance("right-down", tiles_hash)}"

