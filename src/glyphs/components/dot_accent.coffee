exports.glyphs['dot_accent'] =
	glyphName: "dotaccent"
	characterName: "DOT ACCENT"
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
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x - minThickness / 2
					y: anchors[0].y
					typeOut: 'line'
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + minThickness
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].x + minThickness
					y: contours[0].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y - minThickness
					typeOut: 'line'
