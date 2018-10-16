exports.glyphs['f'] =
	unicode: 'f'
	glyphName: 'f'
	characterName: 'LATIN SMALL LETTER F'
	altImg: 'default-f.svg'
	ot:
		advanceWidth: contours[0].nodes[3].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 40
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
					x: contours[1].nodes[0].x + 80 * width + (29/defaultThickness) * thickness
					y: Math.max(0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: ( 605 / 750 ) * ascenderHeight - ( thickness - 115 )
					dirOut:( - 90 ) / 180 * Math.PI
					tensionOut: 1.2
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				2:
					# x: 245
					x: contours[0].nodes[0].expandedTo[1].x + 20
					y: ascenderHeight
					dirIn: 0
					tensionIn: 1.2
					typeOut: 'line'
					expand:
						width: ( 99 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle:( - 72 ) / 180 * Math.PI
						distr: 0
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 110 * width - Math.max( 0, serifHeight * serifArc ) + serifHeight + serifCurve
					y: ascenderHeight
					typeIn: 'line'
					expand:
						width: ( 95 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 90 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[3].x
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 90 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[1]
					noneAnchor: contours[0].nodes[3].expandedTo[1]
					opposite: contours[0].nodes[3].expandedTo[0]
