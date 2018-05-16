exports.glyphs['G_cap'] =
	unicode: 'G'
	glyphName: 'G'
	characterName: 'LATIN CAPITAL LETTER G'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + (36)
		spacingRight: 50 * spacing + 45
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 100 ) # 40
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[1].nodes[2].x
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) *  ( 185 / 415 )
					y: ( 408 / 750 ) * capHeight * crossbar
					typeOut: 'line'
					expand:
						width: ( 110 / 115) * thickness * opticThickness * contrast * contrastExtremity
						angle: - Math.PI / 2
						distr: 0.5
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
					typeIn: 'line'
					expand:
						width: ( 110 / 115) * thickness * opticThickness * contrast * contrastExtremity
						angle: - Math.PI / 2
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( ( 115 / 115 ) * thickness * opticThickness * contrast ) / ( Math.cos( ( 180 + 153 ) / 180 * Math.PI ) )
						angle: 0
						distr: 0
				1:
					x: Math.max(
						contours[1].nodes[3].expandedTo[1].x + 480 + 200 * width - (36),
						contours[1].nodes[3].expandedTo[0].x + 0.25 * ( 145 / 115) * thickness * opticThickness * contrast + 10
					)
					y: ( 90 / 750 ) * capHeight + (16)
					dirOut: ( - 140 ) / 180 * Math.PI
					typeIn: 'line'
					expand:
						width: ( 145 / 115 ) * thickness * opticThickness * contrast
						angle: ( 180 + 153 ) / 180 * Math.PI
						distr: 0.75
				2:
					x: contours[1].nodes[3].expandedTo[0].x + ( contours[1].nodes[5].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) * 0.55
					y: - overshoot
					dirOut: ( - 180 ) / 180 * Math.PI
					type: 'smooth'
					tensionIn: 1.1
					expand:
						width: ( 110 / 115) * thickness * contrast * opticThickness
						angle: ( 180 + 90 ) / 180 * Math.PI
						distr: 1
				3:
					x: spacingLeft
					y: ( 375 / 750 ) * capHeight
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 145 / 115) * thickness * opticThickness
						angle: Math.PI
						# TODO: distr is inverted boy...
						distr: 0.75
				4:
					x: contours[1].nodes[2].x
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 110 / 115) * thickness * contrast * opticThickness
						angle: ( 180 - 90 ) / 180 * Math.PI
						distr: 1
				5:
					x: contours[1].nodes[1].expandedTo[1].x - ( 11 / 115 ) * thickness - (21)
					y: Math.max( contours[1].nodes[0].expandedTo[1].y + ( 10 / 750 ) * capHeight, capHeight - 170 * aperture * apertureTop - 65 ) + (62)
					dirIn: Math.max(
						anglePenTop + 90 - 10 - correctWidthAperture,
						90
					) / 180 * Math.PI
					expand:
						width: ( 129 / 115) * thickness * opticThickness * contrast * contrastExtremity
						angle: ( anglePenTop ) / 180 * Math.PI
						distr: 0.75
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'toptop'
			class: 'topOutsideCurve'
			parentAnchors:
				0:
					baseDir: contours[1].nodes[5].dirIn
					baseWidth: contours[1].nodes[5].expandedTo[1]
					baseHeight: contours[1].nodes[5].expandedTo[1]
					noneAnchor: contours[1].nodes[5].expandedTo[1]
					opposite: contours[1].nodes[5].expandedTo[0]
					curveEnd: contours[1].nodes[4].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[1].nodes[5].expandedTo[1]
		1:
			base: ['none', 'serif-curve-inside-auto']
			id: 'topbottom'
			class: 'topInsideCurve'
			parentAnchors:
				0:
					baseDir: contours[1].nodes[5].dirIn
					baseWidth: contours[1].nodes[5].expandedTo[0]
					baseHeight: contours[1].nodes[5].expandedTo[1]
					noneAnchor: contours[1].nodes[5].expandedTo[0]
					opposite: contours[1].nodes[5].expandedTo[1]
					curveEnd: contours[1].nodes[4].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[1].nodes[5].expandedTo[1]
					down: true
					inverseOrder: true
		2:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottombottom'
			class: 'bottomOutsideCurve'
			parentAnchors:
				0:
					baseDir: contours[1].nodes[1].dirOut
					baseWidth: contours[1].nodes[1].expandedTo[1]
					baseHeight: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					curveEnd: contours[1].nodes[2].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[1].nodes[1].expandedTo[1]
					down: true
					inverseOrder: true
