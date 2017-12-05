I am a connector to manipule data in Arango database. You can create a instance of me like this :

(AranDatabaseConnector host: 'http://127.0.0.1:8529' user: 'test' password: 'test')

You can use AQL to make query :

instance execute: 'Your AQL query asString'
instance execute: 'Your AQL query asString with @bindVar ' withArgs: { (bindVar -> value) } asDictionary

for more public fonction, see the protocol query.

