exports.glyphs['V_cap'] =
	unicode: 'V'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	parameters:
		spacingLeft: 10 * spacing + (36)
		spacingRight: 10 * spacing
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
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 125 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x + ( 5 / 115 ) * thickness * opticThickness * contrast
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 125 / 115 ) * thickness * opticThickness * contrast
						# width: 4
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: 400 + 230 * width - (36)
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness * contrast
						# width: 4
						angle: 180 + 'deg'
						distr: 0.25
					})
