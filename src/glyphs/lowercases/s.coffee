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
					y: Math.min( contours[0].nodes[3].y - ( 30 / 520 ) * xHeight, 150 * aperture - 20 ) + (10) # 130
					# should be:
					# dirOut: contours[0].nodes[0].expand.angle + Math.PI / 2
					# but there is an issue in dependencies tree
					dirOut: Math.max( - 10, - 60 * aperture + 81 ) + 90 + 'deg'
					expand: Object({
						width: ( 112 / 115 ) * thickness
						angle: Math.max( - 10, - 60 * aperture + 81 ) + 'deg' # 21 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.52
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 90 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: 200 + 275 * width - (29)
					y: Math.max( 140, ( 140 / 520 ) * xHeight )
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
						Math.PI + Math.PI / 60 / width
					)
					tensionIn: 1.1
					tensionOut: 1.1
					type: 'smooth'
					expand: Object({
						width: ( 106 / 115 ) * thickness # + ( 20 / 520 ) * xHeight - 20 # dirty hack to fit xHeight optical deformation
						angle: 180 + 75 + 'deg'
						distr: 0.5
					})
				4:
					x: contours[0].nodes[0].x + (33)
					y: xHeight - Math.max( 140, ( 140 / 520 ) * xHeight )
					dirIn: - 90 + 'deg'
					dirOut: 90 + 'deg'
					expand: Object({
						width: ( 110 / 115 ) * thickness
						angle: 180 + 5 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[6].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * 0.5
					y: xHeight + overshoot / 2
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 85 / 115 ) * thickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				6:
					x: 200 + 261 * width - (24)
					y: Math.max( contours[0].nodes[3].y + ( 10 / 520 ) * xHeight, xHeight - 152 * aperture ) + (9)
					dirIn: contours[0].nodes[6].expand.angle + Math.PI / 2
					expand: Object({
						width: ( 103 / 115 ) * thickness
						angle: Math.max( - 10, - 60 * aperture + 84 ) + 'deg' # 24
						distr: 0.75
					})
