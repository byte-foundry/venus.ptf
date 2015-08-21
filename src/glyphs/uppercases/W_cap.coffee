exports.glyphs['W_cap'] =
	unicode: 'W'
	ot:
		advanceWidth: contours[3].nodes[1].expandedTo[0].x + spacingRight
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
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 145 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2 - ( 15 / 115 ) * thickness * contrast
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 120 / 115 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[3].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[3].nodes[1].expandedTo[0].x - contours[2].nodes[0].expandedTo[0].x ) / 2 + ( 10 / 115 ) * thickness * contrast
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[1].expandedTo[1].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 120 / 115 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: 700 + 210 * width - (36)
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 145 / 115 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 0.25
					})
