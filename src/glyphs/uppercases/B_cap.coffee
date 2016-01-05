exports.glyphs['B_cap'] =
	unicode: 'B'
	glyphName: 'B'
	characterName: 'LATIN CAPITAL LETTER B'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 85 * spacing + (34) + serifWidth / 2
		spacingRight: 35 * spacing
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
					x: spacingLeft
					y: 0 + serifHeight + serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight - serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x - 135,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.2
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness * contrast
						angle: - 87 + 'deg'
						distr: 0
					})
				2:
					x: 280 + 200 * width + (105)
					y: ( 550 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					expand: Object({
						width: ( 140 / 115 ) * thickness * opticThickness
						angle: 180 + 4 + 'deg'
						distr: 0.25
					})
				3:
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x - 55,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: ( 400 / 750 ) * capHeight * crossbar + (14)
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 81 / 115 ) * thickness * opticThickness * contrast
						angle: 180 - 42 + 'deg'
						distr: 0.25
					})
				4:
					expandedTo:
						[
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: contours[1].nodes[3].expandedTo[0].y
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: contours[1].nodes[3].expandedTo[1].y
								typeIn: 'line'
							}
						]
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[4].expandedTo[1].y - ( 25 / 115 ) * thickness * contrast
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 75 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[2].nodes[2].expandedTo[1].x - 100,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: contours[2].nodes[0].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 117 / 115 ) * thickness * opticThickness * contrast
						angle: - 140 + 'deg'
						distr: 0
					})
				2:
					x: 300 + 245 * width + (105)
					y: ( 220 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 146 / 115 ) * thickness * opticThickness
						angle: 180 - 6 + 'deg'
						distr: 0.25
					})
				3:
					x: Math.max(
						contours[2].nodes[2].expandedTo[1].x - 130,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: 0
					dirIn: 0 + 'deg'
					typeOut: 'line'
					tensionIn: 1.2
					expand: Object({
						width: ( 112 / 115 ) * thickness * opticThickness * contrast
						angle: 110 + 'deg'
						distr: 0
					})
				4:
					expandedTo:
						[
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: contours[2].nodes[3].expandedTo[0].y
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: contours[2].nodes[3].expandedTo[1].y
								typeIn: 'line'
							}
						]
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: 0
					right: false
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: capHeight
					directionY: -1
					right: false
