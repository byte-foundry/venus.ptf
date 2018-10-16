# TODO: angle extremity
exports.glyphs['C_cap'] =
	unicode: 'C'
	glyphName: 'C'
	characterName: 'LATIN CAPITAL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 20
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 100 ) # 40
		anglePenBottom: Math.max( - 10, - 60 * aperture * apertureBottom + 100 ) # 40
	anchors:
		0:
			x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) / 2
			y: capHeight + diacriticHeight
			baseSerifTop: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[1].expandedTo[1].handleOut, contours[0].nodes[0].expandedTo[1], contours[0].nodes[0].expandedTo[1].handleIn, serifHeight + Math.min( 180, serifCurve * ( 180 / 15 ) ), true )
			baseSerifBottom: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[0].expandedTo[0].handleOut, contours[0].nodes[1].expandedTo[0], contours[0].nodes[1].expandedTo[0].handleIn, serifHeight + Math.min( 130, serifCurve * ( 130 / 15 ) ) )
			baseSerifTop_: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[4].expandedTo[1].handleOut, contours[0].nodes[3].expandedTo[1], contours[0].nodes[3].expandedTo[1].handleIn, serifHeight + Math.min( 150, serifCurve * ( 150 / 15 ) ) )
			baseSerifBottom_: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[3].expandedTo[0].handleOut, contours[0].nodes[4].expandedTo[0], contours[0].nodes[4].expandedTo[0].handleIn, serifHeight + Math.min( 130, serifCurve * ( 130 / 15 ) ), true )
		1:
			x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
			y: contours[0].nodes[1].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[1].expandedTo[1].y ) * 0.4
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
					# x: spacingLeft + 480 + 200 * width - (61)
					x: Math.max(
						contours[0].nodes[2].expandedTo[1].x + 200 * width + 480 - (61),
						contours[0].nodes[2].expandedTo[0].x + 0.25 * ( 129 / defaultThickness) * thickness * opticThickness * contrast * contrastExtremity + 10
					)
					y: Math.min( contours[0].nodes[2].y - ( 50 / 750 ) * capHeight, 150 * aperture * apertureBottom + 85 ) - (62) # 235
					dirOut: Math.min(
						- anglePenBottom + 90 + 16 + correctWidthAperture,
						90
					) / 180 * Math.PI
					expand:
						width: ( 129 / defaultThickness) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - anglePenBottom ) / 180 * Math.PI
						distr: 0.75
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut:( - 180 ) / 180 * Math.PI
					type: 'smooth'
					expand:
						width: ( 110 / defaultThickness) * thickness * contrast * opticThickness
						angle:( 180 + 90 ) / 180 * Math.PI
						distr: 1
				2:
					x: spacingLeft + (36)
					y: ( 375 / 750 ) * capHeight
					dirOut: Math.PI / 2
					type: 'smooth'
					tensionIn: 0.9
					tensionOut: 0.9
					expand:
						width: ( 145 / defaultThickness) * thickness * opticThickness
						angle: Math.PI
						distr: 0.75
				3:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 110 / defaultThickness) * thickness * contrast * opticThickness
						angle:( 180 - 90 ) / 180 * Math.PI
						distr: 1
				4:
					x: contours[0].nodes[0].x
					y: Math.max( contours[0].nodes[2].y + ( 50 / 750 ) * capHeight, capHeight - 170 * aperture * apertureTop - 65 ) + (62)
					dirIn: Math.max(
						anglePenTop + 90 - 10 - correctWidthAperture,
						90
					) / 180 * Math.PI
					typeOut: 'line'
					expand:
						width: ( 129 / defaultThickness) * thickness * opticThickness * contrast * contrastExtremity
						angle:( anglePenTop ) / 180 * Math.PI
						distr: 0.75
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
			base: ['none', 'serif-curve-inside-auto']
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
