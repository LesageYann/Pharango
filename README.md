# Pharango
A  http connector for Pharo and arango db.

## Installation

Install on Pharo >= 5

	Metacello new
		repository: 'github://Valtena/Pharango:master/src';
		baseline: 'Pharango';
		load

To add dependency in your project baseline :

	spec
		baseline: 'Pharango'
		with: [ spec repository: 'github://Valtena/Pharango:master/src' ]

Note that you can replace the `master` by another branch as `developmen` or a tag as `v1.0.0` or `v1.x.x`.

Install on Pharo < 5

**TODO (Need to check how to load a newer Matacello managing metadataless filetree)**