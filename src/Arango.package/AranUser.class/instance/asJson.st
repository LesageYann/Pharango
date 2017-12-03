as yet unclassified
asJson
  ^ NeoJSONWriter toString: {( 'username'-> self username). ('password' -> self password)  } asDictionary