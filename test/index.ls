cases =
  location: \Location
  home: \Home
  profile: \Profile

require \../register <| plugins: <[istanbul]>
require! tape: test
list = if process.argv.length > 2 then process.argv.slice 2
else  Object.keys cases
list.for-each (name) ->
  test cases[name] || name, (require "./#name" .default)
