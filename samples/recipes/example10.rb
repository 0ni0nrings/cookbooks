players = {
  'McAuthen, Andrew' => {
    'Avg' => 0.311,
    'OBP' => 0.385,
    'SLG' => 0.507
  },
  'Alvarez, Pedro' => {
    'Avg' => 0.236,
    'OBP' => 0.297,
    'SLG' => 0.477
  }
}

puts players['McAuthen, Andrew']
puts players['McAuthen, Andrew']['Avg']
puts players['McAuthen, Andrew']['OBP']
puts players['McAuthen, Andrew']['SLG']
puts players['Alvarez, Pedro']

players.select do |name, statistics|
  puts name, statistics
end
