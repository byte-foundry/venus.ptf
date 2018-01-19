exports.glyphs['line'] =
	characterName: 'VERTICAL LINE'
	parameters:
		thickness: Math.max( 40, Math.min( 120, thickness ))
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y + 75
					typeOut: 'line'
					expand:
						width: ( 75 / 115 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: - 75
					typeIn: 'line'
					expand:
						width: ( 75 / 115 ) * thickness
						angle: 0
						distr: 0.5
