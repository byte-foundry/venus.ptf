exports.glyphs['circumflex'] =
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
			closed: false
			nodes:
				0:
					x: anchors[0].x - ( 85 + ( 95 / 115 ) * thickness ) * width
					y: anchors[0].y
					typeOut: 'line'
				1:
					x: anchors[0].x - ( 45 / 115 ) * thickness
					y: anchors[0].y + 160
					typeOut: 'line'
				2:
					x: anchors[0].x + ( 45 / 115 ) * thickness
					y: contours[0].nodes[1].y
					typeOut: 'line'
				3:
					x: anchors[0].x + ( 85 + ( 95 / 115 ) * thickness ) * width
					y: contours[0].nodes[0].y
					typeOut: 'line'
				4:
					x: contours[0].nodes[3].x - ( 95 / 115 ) * thickness
					y: contours[0].nodes[3].y
					typeOut: 'line'
				5:
					x: anchors[0].x
					y: contours[0].nodes[1].y - Math.min( 135, ( 90 / 115 ) * thickness )
					typeOut: 'line'
				6:
					x: contours[0].nodes[0].x + ( 95 / 115 ) * thickness
					y: contours[0].nodes[0].y
					typeOut: 'line'
				7:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
