exports.glyphs['macron'] =
	glyphName: "macron"
	characterName: "MACRON"
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
					x: anchors[0].x - 140 * width
					y: anchors[0].y
					typeOut: 'line'
					expand:
						width: thickness * ( 80 / 115 )
						angle: 90 + 'deg'
						distr: 0
				1:
					x: anchors[0].x + 140 * width
					y: anchors[0].y
					typeOut: 'line'
					expand:
						width: thickness * ( 80 / 115 )
						angle: 90 + 'deg'
						distr: 0
