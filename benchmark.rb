require 'benchmark'
require_relative 'anagrams.rb'
require_relative 'largest_contiguous_subsum.rb'
require_relative 'max_windowed_range.rb'
require_relative 'my_min.rb'
require_relative 'two_sum.rb'

Benchmark.bm do |bm|
  bm.report("anagrams 1") { first_anagram?("resistance", "ancestries") }
  bm.report("anagrams 2") { second_anagram?("resistance", "ancestries") }
  bm.report("anagrams 3") { third_anagram?("resistance", "ancestries") }
  bm.report("anagrams 4") { fourth_anagram?("resistance", "ancestries") }
  test = (1..500000).to_a.shuffle
  bm.report("slow largest continuous subsum") { lcs1(test) }
  bm.report("fast largest continuous subsum") { lcs2(test) }
  bm.report("slow min") { my_min1(test) }
  bm.report("fast min") { my_min2(test) }
  bm.report("slow two sum true") { bad_two_sum?(test, 250) }
  bm.report("slow two sum false") { bad_two_sum?(test, -1) }
  bm.report("okay two sum true") { okay_two_sum?(test, 250) }
  bm.report("okay two sum false") { okay_two_sum?(test, -1) }
  bm.report("fast two sum true") { pair_sum?(test, 250) }
  bm.report("fast two sum false") { pair_sum?(test, -1) }
  bm.report("windowed max range slow") { bad_windowed_max_range(test, 30) }
  bm.report("windowed max range fast") { windowed_max_range(test, 30) }
end