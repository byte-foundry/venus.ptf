exports.glyphs['J_cap'] =
	unicode: 'J'
	glyphName: 'J'
	characterName: 'LATIN CAPITAL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45 + (36)
		spacingRight: 50 * spacing + 85
		# anglePenBottom: Math.max( - 10, - 60 * aperture * apertureBottom + 76 ) # 16
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[4].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[4].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
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
					expand:
						width: ( 137 / 115 ) * thickness * opticThickness * contrastExtremity
						angle: 10 + 'deg'
						distr: 0.25
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
					typeIn: 'line'
					expand:
						width: ( 140 / 115 ) * thickness * opticThickness * contrastExtremity
						angle: 16 + 'deg'
						# angle: anglePenBottom + 'deg'
						distr: 0.25
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.15
					tensionOut: 1.1
					expand:
						width: ( 125 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
				3:
					x: contours[0].nodes[4].x
					y: ( 220 / 750 ) * capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
				4:
					x: contours[0].nodes[0].expandedTo[1].x + 200 * width + 105 - (34)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[1]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[4]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[0]
					opposite: contours[0].nodes[4].expandedTo[1]
			transformOrigin: contours[0].nodes[4].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
