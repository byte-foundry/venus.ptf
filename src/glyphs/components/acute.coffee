exports.glyphs['acute'] =
	glyphName: "acute"
	characterName: "ACUTE ACCENT"
	global: true
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
						width: thickness * ( 105 / defaultThickness )
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 75 * width
					y: anchors[0].y + 150
					typeIn: 'line'
					expand:
						width: thickness + Math.min( minThickness, ( 35 / defaultThickness ) * thickness )
						angle: 0
						distr: 0.5
