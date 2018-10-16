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
					y: capHeight + overshoot - 60 - ( 60 / defaultThickness ) * thickness
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
					dirOut: 0
					tensionOut: 1.2
					expand:
						width:  Math.max( 8, ( 60 / defaultThickness ) * thickness )
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					dirIn: Math.PI / 2
					tensionOut: 1.2
					expand:
						width:  Math.max( 8, ( 75 / defaultThickness ) * thickness )
						angle: 0
						distr: 0
