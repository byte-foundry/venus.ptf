exports.glyphs['f'] =
	unicode: 'f'
	ot:
		advanceWidth: contours[0].nodes[3].x + spacingRight
	parameters:
		spacingLeft: 30
		spacingRight: 70
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 110 * width + (29)
					y: 0
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ( 605 / 750 ) * ascenderHeight - ( thickness - 115 )
					dirOut: - 90 + 'deg'
					tensionOut: 1.2
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					# x: 245
					x: contours[0].nodes[0].expandedTo[1].x + 20
					y: ascenderHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					typeOut: 'line'
					expand: Object({
						width: ( 99 / 115 ) * thickness * contrast
						angle: - 72 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 110 * width
					y: ascenderHeight
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[3].x
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[1].nodes[0].expand.width
						angle: - 90 + 'deg'
						distr: 0
					})
