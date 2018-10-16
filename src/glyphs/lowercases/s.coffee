exports.glyphs['s'] =
	unicode: 's'
	glyphName: 's'
	characterName: 'LATIN SMALL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 30
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 84 ) # 24
		anglePenBottom: Math.max( - 10, - 60 * aperture * apertureBottom + 81 ) # 21
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[5].x
			y: xHeight + diacriticHeight
		1:
			x: contours[0].nodes[1].x
			y: contours[0].nodes[1].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[1].expandedTo[1].y ) * 0.4
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (23)
					y: Math.min( contours[0].nodes[3].y - ( 40 / 520 ) * xHeight, 150 * aperture * apertureBottom - 20 ) + (10) # 130
					dirOut: Math.max(
						anglePenBottom + 90 - correctWidthAperture,
						90
					) / 180 * Math.PI
					tensionOut: Math.min( correctTensionAperture, aperture * apertureBottom )
					expand:
						width: ( 112 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle:( anglePenBottom ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.52
					y: - overshoot / 2
					dirOut: 0
					expand:
						width: ( 90 / defaultThickness ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				2:
					# x: 275 + 200 * width - (29)
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 245 - (29),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: Math.max( 140, ( 140 / 520 ) * xHeight )
					dirIn:( - 90 ) / 180 * Math.PI
					dirOut: Math.PI / 2
					expand:
						width: thickness
						angle:( 180 + 5 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x + ( contours[0].nodes[5].x - contours[0].nodes[1].x ) * 0.46
					y: ( 260 / 520 ) * xHeight
					dirOut: Math.min(
						Utils.lineAngle({x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y}, {x: contours[0].nodes[4].expandedTo[0].x, y: contours[0].nodes[4].expandedTo[0].y} ) + Math.PI / 6,
						Math.PI + Math.PI / 60 / width
					)
					tensionIn: 1.1
					tensionOut: 1.1
					type: 'smooth'
					expand:
						width: ( 106 / defaultThickness ) * thickness # + ( 20 / 520 ) * xHeight - 20 # dirty hack to fit xHeight optical deformation
						angle:( 180 + 75 ) / 180 * Math.PI
						distr: 0.5
				4:
					x: contours[0].nodes[0].x + (33)
					y: xHeight - Math.max( 140, ( 140 / 520 ) * xHeight )
					dirIn:( - 90 ) / 180 * Math.PI
					dirOut: Math.PI / 2
					expand:
						width: ( 110 / defaultThickness ) * thickness
						angle:( 180 + 5 ) / 180 * Math.PI
						distr: 0.75
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[6].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * 0.5
					y: xHeight + overshoot / 2
					dirOut: 0
					expand:
						width: ( 85 / defaultThickness ) * thickness * contrast
						angle:( 180 - 90 ) / 180 * Math.PI
						distr: 1
				6:
					# x: 261 + 200 * width - (24)
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 230 - (24),
						contours[0].nodes[4].expandedTo[0].x + Math.cos( anglePenTop / 180 * Math.PI ) * 0.75 * ( 103 / defaultThickness ) * thickness * contrast * contrastExtremity + 10
					)
					y: Math.max( contours[0].nodes[3].y + ( 40 / 520 ) * xHeight, xHeight - 152 * aperture * apertureTop ) + (9)
					dirIn: Math.max(
						anglePenTop + 90 - correctWidthAperture,
						90
					) / 180 * Math.PI
					tensionIn: Math.min( correctTensionAperture, aperture * apertureTop )
					expand:
						width: ( 103 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle:( anglePenTop ) / 180 * Math.PI
						distr: 0.75
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'toptop'
			class: 'topOutsideCurve'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[6].dirIn
					baseWidth: contours[0].nodes[6].expandedTo[1]
					baseHeight: contours[0].nodes[6].expandedTo[1]
					noneAnchor: contours[0].nodes[6].expandedTo[1]
					opposite: contours[0].nodes[6].expandedTo[0]
					curveEnd: contours[0].nodes[5].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[6].expandedTo[1]
		1:
			base: ['none', 'serif-curve-inside-auto']
			id: 'topbottom'
			class: 'topInsideCurve'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[6].dirIn
					baseWidth: contours[0].nodes[6].expandedTo[0]
					baseHeight: contours[0].nodes[6].expandedTo[1]
					noneAnchor: contours[0].nodes[6].expandedTo[0]
					opposite: contours[0].nodes[6].expandedTo[1]
					curveEnd: contours[0].nodes[5].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[6].expandedTo[1]
					down: true
					inverseOrder: true
		2:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottombottom'
			class: 'bottomOutsideCurve'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[0].dirOut
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					curveEnd: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[0].expandedTo[0]
					down: true
					left: true
		3:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottomtop'
			class: 'bottomInsideCurve'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[0].dirOut
					baseWidth: contours[0].nodes[0].expandedTo[1]
					baseHeight: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[0]
					curveEnd: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[0].expandedTo[0]
					left: true
					inverseOrder: true
