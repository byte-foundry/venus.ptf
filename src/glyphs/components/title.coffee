exports.glyphs['title'] =
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
					y:
						Math.min(
							anchors[0].y,
							ascenderHeight - 25 # Set a min value to display a legible title in thin weights
						)
					typeOut: 'line'
					expand:
						width: minThickness # Math.max( thickness, 25 ) # Set a min value to display a legible title in thin weights
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + minThickness # Math.max( thickness, 25 )
					typeIn: 'line'
					expand:
						width: contours[0].nodes[0].expand.width
						angle: 0
						distr: 0.5
