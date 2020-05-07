exports.glyphs['o'] =
	unicode: 'o'
	glyphName: 'o'
	characterName: 'LATIN SMALL LETTER O'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + (31)
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].x
			y: xHeight + diacriticHeight
			left: contours[0].nodes[0].expandedTo[0].x
			right: contours[0].nodes[2].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft
					y: ( 260 / 520 ) * xHeight
					dirOut: Math.PI / 2
					tensionOut: 1.15
					expand:
						width: ( 125 / defaultThickness ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0
					type: 'smooth'
					tensionOut: 1.15
					expand:
						width: ( 85 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 290 + 200 * width - (31),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 125 / defaultThickness ) * thickness + 10
					)
					y: contours[0].nodes[0].y
					dirOut:( - 90 ) / 180 * Math.PI
					tensionOut: 1.15
					type: 'smooth'
					expand:
						width: ( 125 / defaultThickness ) * thickness
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: Math.PI
					tensionOut: 1.15
					type: 'smooth'
					expand:
						width: ( 85 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle: Math.PI / 2
						distr: 0
