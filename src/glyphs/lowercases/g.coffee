exports.glyphs['g'] =
	unicode: 'g'
	glyphName: 'g'
	characterName: 'LATIN SMALL LETTER G'
	ot:
		advanceWidth: contours[1].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 70
		anglePenBottom: Math.min( 10, 100 * aperture * apertureBottom - 100 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (31)
					y: ( 260 / 520 ) * xHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					tensionOut: 1.2
					tensionIn: 1.2
					expand:
						width: ( 125 / defaultThickness) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[3].x
					y: 0
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 102 / defaultThickness ) * thickness * contrast
						angle:( 68 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 205 + 200 * width - (12),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 50 / defaultThickness ) * thickness * contrast * contrastExtremity + 10
					)
					y: contours[0].nodes[0].y
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 50 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * (202 / 404)
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 102 / defaultThickness ) * thickness * contrast
						angle:( - 68 ) / 180 * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: Math.min(
						( ( 200 / 250 ) * descender + (45) + ( ( 95 / defaultThickness ) * thickness * contrast ) * .5 ) + 60 + 150 * aperture * apertureBottom - 150,
						- overshoot + 15 * aperture * apertureBottom - 15
					)
					dirOut: - Math.min( 10,( 60 * aperture - 60 ) - 90 ) / 180 * Math.PI
					# dirOut: Math.min(
					# 	# anglePenBottom - 90 + 20 - correctWidthAperture,
					# 	anglePenBottom + 60 * aperture * apertureBottom - 60,
					# 	10
					# ) / 180 * Math.PI
					tensionOut: Math.min( correctTensionAperture, 1.2 * aperture * apertureBottom )
					expand:
						width: ( (105 + Math.min( 20, 20 * aperture * apertureBottom )) / defaultThickness ) * thickness * contrast * contrastExtremity
						angle:( - anglePenBottom ) / 180 * Math.PI # 0
						distr: 0.25
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * ( 235 / 475 )
					y: Math.min(
						( 200 / 250 ) * descender + (45),
						- overshoot - ( 95 / defaultThickness ) * thickness * contrast * .5
					)
					dirOut: 0
					typeIn: 'smooth'
					tensionOut: 1.2
					expand:
						width: ( 95 / defaultThickness ) * thickness * contrast
						angle:( 180 - 84 ) / 180 * Math.PI
						distr: 0.5
				2:
					x: contours[0].nodes[2].expandedTo[1].x
					y: Math.min(
						( 200 / 250 ) * descender + (45),
						- overshoot + ( 95 / defaultThickness ) * thickness * contrast * .5
					) + 155
					dirIn: Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 125 / defaultThickness ) * thickness
						angle:( 180 + 23 ) / 180 * Math.PI
						distr: 1
				3:
					x: contours[1].nodes[2].x
					y: xHeight - Math.max(0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: thickness
						angle: Math.PI
						distr: 1
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[1].nodes[3].expandedTo[0]
					noneAnchor: contours[1].nodes[3].expandedTo[0]
					opposite: contours[1].nodes[3].expandedTo[1]
			transformOrigin: contours[1].nodes[3].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
