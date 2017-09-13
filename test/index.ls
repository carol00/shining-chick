import tape: test

cases =
  location: \Location
  home: \Home
  profile: \Profile


function main
  Object.entries cases .for-each ([path, name]) ->
    fn = require "./#path" .default
    test name, fn

main!
