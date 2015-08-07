exports.glyphs['A_cap'] =
	unicode: 'A'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 10 * spacing + (36)
		spacingRight: 10 * spacing
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 145 / 115 ) * thickness * contrast * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x:
						contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 -
						( 142 / 115 ) * thickness / 2
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 137 / 115 ) * thickness * contrast * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x:
						contours[0].nodes[1].expandedTo[0].x +
						( 137 / 115 ) * thickness / 2 +
						( 4 / 115 ) * thickness
					y: contours[0].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 141 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.5
					})
				3:
					x: 320 + 250 * width + (109)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						on: [ contours[0].nodes[2].point, contours[0].nodes[3].point ]
						y: ( 260 / 750 ) * capHeight * crossbar
						})
					y: ( 260 / 750 ) * capHeight * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * contrast * opticThickness
						angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: Utils.onLine({
						on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]
						y: ( 260 / 750 ) * capHeight * crossbar
						})
					y: ( 260 / 750 ) * capHeight * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * contrast * opticThickness
						angle: 90 + 'deg'
						distr: 1
					})
