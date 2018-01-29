exports.glyphs['D_cap'] =
	unicode: 'D'
	glyphName: 'D'
	characterName: 'LATIN CAPITAL LETTER D'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 85 + (34) + serifWidth / 2
		spacingRight: 50 * spacing + 55
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
		1:
			x: contours[0].nodes[0].expandedTo[0].x - 80
			y: contours[1].nodes[4].expandedTo[1].y + ( contours[1].nodes[0].expandedTo[1].y - contours[1].nodes[4].expandedTo[1].y ) * 0.5
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max( 0, serifHeight * serifArc )
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: 0
					expand:
						width: ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x - 100 * width - 290,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: capHeight
					type: 'smooth'
					dirOut: 0
					tensionOut: 1.1
					expand:
						width: ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - 87 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 425 - (36),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 145 / 115 ) * thickness * opticThickness + 10
					)
					y: ( 375 / 750 ) * capHeight
					dirOut:( - 90 ) / 180 * Math.PI
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.13
					expand:
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
				3:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x - 100 * width - 260,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: 0
					dirIn: 0
					type: 'smooth'
					tensionIn: 1.13
					expand:
						width: ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( 95 ) / 180 * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: 0
					expand:
						width: ( 105 / 115 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
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
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
