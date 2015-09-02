exports.glyphs['s'] =
	unicode: 's'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 30 * spacing + (23)
		spacingRight: 30 * spacing
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
					x: spacingLeft
					y: 130 + (10)
					dirOut: - 67 + 'deg'
					expand: Object({
						width: ( 112 / 115 ) * thickness
						angle: 21 + 'deg'
						distr: 0.25
					})
				1:
					x: 265
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 90 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: 475 - (29)
					y: 140
					dirIn: - 90 + 'deg'
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness
						angle: 180 + 5 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x + ( contours[0].nodes[5].x - contours[0].nodes[1].x ) * 0.46
					y: ( 260 / 520 ) * xHeight
					dirOut: Math.min(
						Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[4].expandedTo[0].point ) + Math.PI / 6,
						Math.PI + Math.PI / 60
					)
					tensionIn: 1.1
					tensionOut: 1.1
					type: 'smooth'
					expand: Object({
						width: ( 106 / 115 ) * thickness 
						angle: 180 + 75 + 'deg'
						distr: 0.5
					})
				4:
					x: contours[0].nodes[0].x + (33)
					y: xHeight - 140
					dirIn: - 90 + 'deg'
					dirOut: 90 + 'deg'
					expand: Object({
						width: ( 110 / 115 ) * thickness
						angle: 180 + 5 + 'deg'
						distr: 0.75
					})
				5:
					x: 245
					y: xHeight + overshoot / 2
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 85 / 115 ) * thickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				6:
					x: 367 + (24)
					y: xHeight - 152 + (9)
					dirIn: 118 + 'deg'
					expand: Object({
						width: ( 103 / 115 ) * thickness
						angle: 24 + 'deg'
						distr: 0.25
					})
