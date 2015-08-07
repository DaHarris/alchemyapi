# alchemyapi

[Visit Site!](http://transmutate.herokuapp.com)

##Purpose:

**This application provides a dashboard for AlchemyAPI to use for monitoring their
social media and technical support presence on Twitter and Stack Overflow.**

Both the Twitter and Stack Overflow APIs are used to search and provide the most recent
tweets or questions/answers that reference the term 'AlchemyAPI'. The information is then displayed
on the dashboard in most recent order.

The next part of the application is the use of the AlchemyAPI sentiment and keyword analysis APIs.
The tweets and the questions/answers, upon selection, will be run through the respective analysis
and will display the results on the dashboard.

Sentiment is graded on a scale of red (negative), to white (neutral), to green (positive), with yellow
tones showing different gradients between those colors. The keyword analysis portion provides up to five
of the most relevant keywords taken from the text and provides them in most relevant to least relevant order.

##Issues:

Faraday and/or the Ruby Default HTTP Adapter don't work with the alchemyapi api.
Had to switch to the Excon adapter to correctly receive data. Research suggests that
the server could be returning a 'malformed compressed response' and the Net::HTTP is having trouble
decompressing the data. Unsure without more in depth testing.

[More Info:](https://github.com/jaimeiniesta/metainspector/issues/125)
