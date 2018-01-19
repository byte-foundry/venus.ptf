exports.glyphs['caronSlovak'] =
	glyphName: "caronslovak"
	characterName: "CARON SLOVAK"
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					typeOut: 'line'
					expand:
						width: thickness * ( 125 / 115 )
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x - 20 * width
					y: anchors[0].y - 150
					typeIn: 'line'
					expand:
						width: Math.min( minThickness, ( 85 / 115 ) * thickness )
						angle: 0
						distr: 0.5
