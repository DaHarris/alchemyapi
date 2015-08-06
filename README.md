# alchemyapi

Bugs Found: Faraday and/or the Ruby Default HTTP Adapter don't work with the alchemyapi api.
Had to switch to the excon adapter to correctly receive data. Research suggests that
the server is returning a 'malformed compressed response' and the Net::HTTP is having trouble
decompressing the data.

More Info:
https://github.com/jaimeiniesta/metainspector/issues/125
