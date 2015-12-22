exports.glyphs['circumflex'] =
	glyphName: "circumflex"
	characterName: "MODIFIER LETTER CIRCUMFLEX ACCENT"
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
					x: anchors[0].x
					y: Math.max(
						anchors[0].y + 30,
						contours[0].nodes[3].y - ( 90 / 115 ) * thickness
					)
					typeOut: 'line'
				1:
					x: Math.min(
						anchors[0].x - 10,
						contours[0].nodes[2].x + ( 105 / 115 ) * thickness
					)
					y: anchors[0].y
					typeOut: 'line'
				2:
					x: anchors[0].x - 105 - 65 * width
					y: contours[0].nodes[1].y
					typeOut: 'line'
				3:
					x: anchors[0].x - Math.min( 70, ( 58 / 115 ) * thickness )
					y: anchors[0].y + 150
					typeOut: 'line'
				4:
					x: anchors[0].x + Math.min( 70, ( 58 / 115 ) * thickness )
					y: contours[0].nodes[3].y
					typeOut: 'line'
				5:
					x: anchors[0].x + 105 + 65 * width
					y: anchors[0].y
					typeOut: 'line'
				6:
					x: Math.max(
						anchors[0].x + 10,
						contours[0].nodes[5].x - ( 105 / 115 ) * thickness
					)
					y: anchors[0].y
					typeOut: 'line'
