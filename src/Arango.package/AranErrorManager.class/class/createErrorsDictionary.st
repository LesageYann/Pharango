as yet unclassified
createErrorsDictionary
	^ errors := {(400 -> AranHTTPError).
	(401 -> AranHTTPError).
	(402 -> AranHTTPError).
	(403 -> AranHTTPError).
	(404 -> AranHTTPError).
	(405 -> AranHTTPError).
	(409 -> AranDuplicatedError).
	(412 -> AranHTTPError).
	(500 -> AranHTTPError)} asDictionary