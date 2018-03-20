exports.glyphs['c'] =
	unicode: 'c'
	glyphName: 'c'
	characterName: 'LATIN SMALL LETTER C'
	altImg: 'serif-less-c.svg'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 30
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 86 ) # 26
		anglePenBottom: Math.max( - 10, - 60 * aperture * apertureBottom + 86 ) # 26
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[3].x
			y: xHeight + diacriticHeight
		1:
			x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
			y: contours[0].nodes[1].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[1].expandedTo[1].y ) * 0.4
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[1].x + 200 * width + 270 - (22),
						contours[0].nodes[2].expandedTo[0].x + 0.75 * thickness + 10
					)
					y: Math.min( contours[0].nodes[2].y - ( 30 / 520 ) * xHeight, 130 * aperture * apertureBottom + 20 ) - (15) # 190 - (15)
					dirOut: Math.min(
						- anglePenBottom + 90 + 6 + correctWidthAperture,
						90
					) / 180 * Math.PI
					expand:
						width: ( 115 / 115) * thickness * contrast * contrastExtremity
						angle:( - anglePenBottom ) / 180 * Math.PI
						distr: 0.75
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut:( - 180 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 95 / 115) * thickness * contrast
						angle:( 180 + 90 ) / 180 * Math.PI
						distr: 1
				2:
					x: spacingLeft + (31)
					y: ( 260 / 520 ) * xHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					tensionIn: 1.15
					tensionOut: 1.15
					expand:
						width: ( 125 / 115) * thickness
						angle: Math.PI
						distr: 0.75
				3:
					x: contours[0].nodes[1].x
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					tensionOut: 1.2
					expand:
						width: ( 90 / 115) * thickness * contrast
						angle:( 180 - 90 ) / 180 * Math.PI
						distr: 1
				4:
					x: contours[0].nodes[0].x
					y: Math.max(
						contours[0].nodes[2].y + ( 30 / 520 ) * xHeight,
						xHeight - 150 * aperture * apertureTop + 10
					) - (12)
					dirIn: Math.max(
						anglePenTop + 90 - correctWidthAperture,
						90
					) / 180 * Math.PI
					expand:
						width: ( 112 / 115) * thickness * contrast * contrastExtremity
						angle:( anglePenTop ) / 180 * Math.PI
						distr: 0.75 # * contrastExtremity
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'toptop'
			class: 'topOutsideCurve'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[4].dirIn
					baseWidth: contours[0].nodes[4].expandedTo[1]
					baseHeight: contours[0].nodes[4].expandedTo[1]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
					curveEnd: contours[0].nodes[3].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[4].expandedTo[1]
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topbottom'
			class: 'topInsideCurve'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[4].dirIn
					baseWidth: contours[0].nodes[4].expandedTo[0]
					baseHeight: contours[0].nodes[4].expandedTo[1]
					noneAnchor: contours[0].nodes[4].expandedTo[0]
					opposite: contours[0].nodes[4].expandedTo[1]
					curveEnd: contours[0].nodes[3].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[4].expandedTo[1]
					down: true
					inverseOrder: true
			parameters:
				serifHeight: Math.max( thickness - serifHeight, serifHeight )
		2:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottombottom'
			class: 'bottomOutsideCurve'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[0].dirOut
					baseWidth: contours[0].nodes[0].expandedTo[1]
					baseHeight: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					curveEnd: contours[0].nodes[1].expandedTo[1]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[1]
					down: true
					inverseOrder: true
			parameters:
				serifHeight: Math.max( thickness - serifHeight, serifHeight )
		3:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottomtop'
			class: 'bottomInsideCurve'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[0].dirOut
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					curveEnd: contours[0].nodes[1].expandedTo[0]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[1]
