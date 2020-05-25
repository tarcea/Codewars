def decode(r)
  h = {}
  ('a'..'z').to_a.each.with_index { |g, i| h[g] = i }
  nr = r.to_i
  tx = r.gsub(nr.to_s, '')
  arr = []
  resp = []
  tx.each_char do |v|
    (0..25).to_a.each do |ss|
      arr << ss if ss * nr % 26 == h[v]
    end
  end
  arr.each { |z| resp << h.key(z) }
  resp.join.length == tx.length ? resp.join : 'Impossible to decode'
end

p decode("6015ekx")
p decode("5057aan")
