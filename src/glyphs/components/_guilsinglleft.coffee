exports.glyphs['_guilsinglleft'] =
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
					x: anchors[0].x + 140 * width + (0)
					y: ( 470 / 520 ) * xHeight
					typeOut: 'line'
					expand:
						width: ( 100 / defaultThickness ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: anchors[0].x + (0)
					y: anchors[0].y
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: ( 100 / defaultThickness ) * thickness
						angle: 0
						distr: 0.25
				2:
					x: contours[0].nodes[0].x
					y: ( 50 / 520 ) * xHeight
					typeIn: 'line'
					expand:
						width: ( 100 / defaultThickness ) * thickness
						angle: 0
						distr: 0.25
