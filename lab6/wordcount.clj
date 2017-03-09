(ns tweetcount
  (:use     [streamparse.specs])
  (:gen-class))

(defn tweetcount [options]
 [

    ;; spout configuration

    {"sentences-spout" (python-spout-spec
          options
          "spouts.sentences.Sentences"
          ["tweet"]
          )
    }

    ;; bolt configuration
    {
	"parse-bolt" (python-bolt-spec
          options
          {"sentences-spout" :shuffle}
          "bolts.parse.ParseTweet"
          ["words"]
          :p 2
        )
	
	"count-bolt" (python-bolt-spec
	  options
	  {"parse-bolt" :all}
	  "bolts.tweetcounter.TweetCounter"
	  ["words" "count"]
	)

     }
  ]
)
