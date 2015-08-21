exports.glyphs['dot'] =
	anchors:
		0:
			x: parentAnchors[0].x - anchors[0].minValue / 2
			y: parentAnchors[0].y
			minValue: minThickness
	tags: [
		'component'
	]
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y- anchors[0].minValue
					typeOut: 'line'
				1:
					x: contours[0].nodes[0].x + anchors[0].minValue
					y: contours[0].nodes[0].y
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].x
					y: anchors[0].y
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].x
					y: anchors[0].y
					typeOut: 'line'
