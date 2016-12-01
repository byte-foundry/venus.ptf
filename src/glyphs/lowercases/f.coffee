exports.glyphs['f'] =
	unicode: 'f'
	glyphName: 'f'
	characterName: 'LATIN SMALL LETTER F'
	ot:
		advanceWidth: contours[0].nodes[3].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 70
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
					x: contours[1].nodes[0].x + 80 * width + (29)
					y: Math.max(0, serifHeight * serifArc )
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
						width: ( 99 / 115 ) * thickness * contrast * contrastExtremity
						angle: - 72 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 110 * width - Math.max( 0, serifHeight * serifArc ) + serifHeight + serifCurve
					y: ascenderHeight
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 115 ) * thickness * contrast * contrastExtremity
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
						width: ( 90 / 115 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[3].x
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 115 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[1].point
					noneAnchor: contours[0].nodes[3].expandedTo[1].point
					opposite: contours[0].nodes[3].expandedTo[0].point
