#!/usr/bin/env ruby
# A self-implementation of Dictionary data structure
module Dict
  # init a dict with the given number of buckets
  def Dict.new(num_buckets=256)
    a_dict = []
    (0...num_buckets).each { a_dict.push([]) }
    a_dict
  end

  # Given a key, create a number and then convert
  # to an index for the a_dict's buckets
  # @param [Object] a_dict
  # @param [Object] key
  def Dict.hash_key(a_dict, key)
    key.hash % a_dict.length
  end

  # Given a key, find the bucket where it would go
  def Dict.get_bucket(a_dict, key)
    a_dict[Dict.hash_key(a_dict, key)]
  end

end
