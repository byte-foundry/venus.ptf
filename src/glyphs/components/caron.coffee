exports.glyphs['caron'] =
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
					x: anchors[0].x - 65 * width
					y: anchors[0].y
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].x - ( 105 / 115 ) * thickness
					y: contours[0].nodes[1].y
					typeOut: 'line'
				3:
					x: anchors[0].x - ( 58 / 115 ) * thickness
					y: anchors[0].y + 150
					typeOut: 'line'
				4:
					x: anchors[0].x + ( 58 / 115 ) * thickness
					y: contours[0].nodes[3].y
					typeOut: 'line'
				5:
					x: contours[0].nodes[6].x + ( 105 / 115 ) * thickness
					y: anchors[0].y
					typeOut: 'line'
				6:
					x: anchors[0].x + 65 * width
					y: anchors[0].y
					typeOut: 'line'
			transformOrigin: Array( anchors[0].x, anchors[0].y + ( contours[0].nodes[3].y - anchors[0].y ) / 2 )
			transforms: Array( [ 'scaleY', -1 ] )
