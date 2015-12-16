exports.glyphs['J_cap'] =
	unicode: 'J'
	glyphName: "J"
	characterName: "LATIN CAPITAL LETTER J"
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 45 * spacing + (36)
		spacingRight: 85 * spacing
		# anglePenBottom: Math.max( - 10, - 60 * aperture * apertureBottom + 76 ) # 16
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
					y: contours[0].nodes[1].y + 60 # 295
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 137 / 115 ) * thickness * opticThickness * contrastExtremity
						angle: 10 + 'deg'
						distr: 0.25
					})
				1:
					x: spacingLeft
					y: 225
					# y: 150 * aperture * apertureBottom + 75 # 235
					dirOut: - 90 + 'deg'
					# dirOut: Math.min(
					# 	anglePenBottom + 90 + 16 * aperture + correctWidthAperture,
					# 	90
					# ) + 'deg'
					tensionOut: 1.15
					expand: Object({
						width: ( 140 / 115 ) * thickness * opticThickness * contrastExtremity
						angle: 16 + 'deg'
						# angle: anglePenBottom + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.15
					tensionOut: 1.1
					expand: Object({
						width: ( 125 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[4].x
					y: ( 220 / 750 ) * capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				4:
					x: 200 + 285 * width - (34)
					y: capHeight - serifHeight - serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].y
				1:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].y
				2:
					anchorLine: capHeight
					directionY: -1
					right: false
