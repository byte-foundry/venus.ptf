exports.glyphs['_quoteleft'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
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
					y: capHeight + overshoot - 60 - ( 60 / 115 ) * thickness
					typeOut: 'line'
				1:
					x: contours[0].nodes[0].x + minThickness
					y: contours[0].nodes[0].y
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[0].y - minThickness
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[2].y
					typeOut: 'line'
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand:
						width:  Math.max( 8, ( 60 / 115 ) * thickness )
						angle: - 90 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand:
						width:  Math.max( 8, ( 75 / 115 ) * thickness )
						angle: 0 + 'deg'
						distr: 0
