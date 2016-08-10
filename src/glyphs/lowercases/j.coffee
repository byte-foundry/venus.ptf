exports.glyphs['j'] =
	unicode: 'j'
	glyphName: 'j'
	characterName: 'LATIN SMALL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + (57) + serifWidth / 2
		spacingRight: 50 * spacing + 70
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
					x: contours[0].nodes[2].expandedTo[0].x - 85 * width
					# x: - 15
					y: ( 75 / 250 ) * descender
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 115 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x - 50
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: ( 100 / 115 ) * thickness * contrast * contrastExtremity
						angle: - 72 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[3].x
					y: 0
					dirOut: - 90 + 'deg'
					tensionIn: 1.3
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				3:
					x: spacingLeft + 150 * width - 150
					y: xHeight - serifHeight - serifCurve
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: 'title'
			parentAnchors:
				0:
					x: contours[0].nodes[3].expandedTo[0].x + thickness / 2
					# y: Math.max(
					# 	ascenderHeight - ( 125 / 115 ) * thickness,
					# 	xHeight + 50
					# )
					y: xHeight + diacriticHeight
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].y
				1:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].y
				2:
					anchorLine: xHeight
					directionY: -1
					right: false
			transformOrigin: Array( contours[0].nodes[3].expandedTo[1].x, contours[0].nodes[3].expandedTo[1].y )
			transforms: Array( [ 'skewY', spurHeight * (15) + 'deg' ] )
