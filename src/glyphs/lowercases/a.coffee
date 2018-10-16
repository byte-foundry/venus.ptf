# TODO: thickness…
exports.glyphs['a'] =
	unicode: 'a'
	altImg: 'double-story-a.svg'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	ot:
		advanceWidth: contours[0].nodes[4].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 30
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 78 ) # 18
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].x
			y: xHeight + diacriticHeight
		1:
			x: contours[0].nodes[4].x
			y: contours[0].nodes[4].y
		2:
			x: contours[0].nodes[1].x - 95 / 2 - minThickness / 2
			y: xHeight + diacriticHeight
		3:
			x: contours[0].nodes[1].x + 95 / 2 + minThickness / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 15 + (26/defaultThickness) * thickness
					y: Math.max( contours[0].nodes[2].expandedTo[0].y - ( 30 / 520 ) * xHeight, xHeight - 130 * aperture * apertureTop ) - (8)
					# dirOut: - Math.max( - 10,( - 60 * aperture + 78 ) + 90 ) / 180 * Math.PI
					dirOut: Math.min(
						- anglePenTop + 90 + correctWidthAperture,
						90
					) / 180 * Math.PI
					expand:
						width: ( 110 / defaultThickness ) * thickness  * contrast * contrastExtremity
						angle:( - anglePenTop ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					type: 'smooth'
					expand:
						width: Math.min(
							( 95 / defaultThickness ) * thickness * contrast,
							xHeight - contours[1].nodes[4].expandedTo[0].y - 10
						)
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[3].x
					y: ( 380 / 520 ) * xHeight - (32) - ( 30 / defaultThickness ) * thickness + 30
					dirIn: Math.PI / 2
					tensionIn: 1.2
					typeOut: 'line'
					expand:
						width: ( 125 / defaultThickness ) * thickness
						angle:( 180 - 23 ) / 180 * Math.PI
						distr: 0.25
				3:
					# x: 275 + 200 * width - (29)
					x: (contours[1].nodes[2].x - 0.25 * thickness) + 200 * width + 235 - (29)
					y: Math.max(
						45,
						( 85 / defaultThickness ) * thickness +
							( Math.min(
								25,
								25 * width
							) / defaultThickness ) * thickness
					)
					dirOut:( - 90 ) / 180 * Math.PI
					tensionOut: 1.6
					expand:
						width: thickness
						angle: Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[3].expandedTo[0].x + 45 # + ( 50 + ( Math.min( 25, 25 * width ) / defaultThickness ) * thickness )
					y: 0
					dirIn: Math.PI
					tensionIn: 1.6
					expand:
						width: ( 85 / defaultThickness ) * thickness
						angle:( 180 + 90 ) / 180 * Math.PI
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x + ( 1 / defaultThickness ) * thickness
					y: 150 + ( 55 / defaultThickness ) * thickness
					dirOut:( - 90 ) / 180 * Math.PI
					tensionOut: 1.3
					expand:
						width: Math.max(
							( 35 / defaultThickness ) * thickness * contrast * contrastExtremity,
							4
						)
						angle: Math.PI
						distr: 1
				1:
					# x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[4].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * 0.22 + 5
					x: contours[0].nodes[1].expandedTo[1].x - Math.min(( 65 / defaultThickness ) * thickness, 65 )
					y:  - overshoot
					typeOut: 'smooth'
					dirIn: 0
					tensionOut: 1.2
					expand:
						width: ( 87 / defaultThickness ) * thickness * contrast
						angle:( 66 ) / 180 * Math.PI
						distr: 0
				2:
					x: spacingLeft + (29/defaultThickness) * thickness
					y: contours[1].nodes[1].expandedTo[1].y + ( contours[1].nodes[4].expandedTo[1].y - contours[1].nodes[1].expandedTo[1].y ) * 0.25
					typeIn: 'smooth'
					dirOut: Math.PI / 2
					# tensionOut: 1.1
					expand:
						width: thickness
						angle:( 2 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[2].x + ( contours[1].nodes[4].x - contours[1].nodes[2].x ) / 2
					y: contours[1].nodes[2].y + ( contours[1].nodes[4].y - contours[1].nodes[2].y ) / 2
					dirOut: Math.max(
						Utils.lineAngle({x: contours[1].nodes[2].expandedTo[1].x, y: contours[1].nodes[2].expandedTo[1].y}, {x: contours[1].nodes[4].expandedTo[1].x, y: contours[1].nodes[4].expandedTo[1].y} ) * contrast - Math.PI / 6,
						0
					)
					typeIn: 'smooth'
					expand:
						width: ( 100 / defaultThickness ) * thickness * contrast
						angle:( - 47 ) / 180 * Math.PI
						distr: 0.3
				4:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y * crossbar
					dirIn: Math.PI / 2
					tensionIn: 1.3
					expand:
						width: ( 125 / defaultThickness ) * thickness / 2 * contrast
						angle:( - 23 ) / 180 * Math.PI
						distr: 0
