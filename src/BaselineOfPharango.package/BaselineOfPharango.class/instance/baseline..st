baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				neoJson: spec;
				mocketry: spec.
			spec
				package: 'Arango' with: [ spec requires: #('NeoJSON') ];
				package: 'Arango-Tests' with: [ spec requires: #('Arango' 'Mocketry') ].
			spec
				group: 'Driver' with: #('Arango');
				group: 'Tests' with: #('Arango-Tests');
				group: 'All' with: #('Driver' 'Tests') ]