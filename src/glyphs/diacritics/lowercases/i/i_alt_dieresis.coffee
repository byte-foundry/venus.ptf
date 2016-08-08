exports.glyphs['i_alt_dieresis'] =
	unicode: 'ï'
	glyphName: 'idieresis'
	characterName: 'LATIN SMALL LETTER I WITH DIAERESIS'
	altImg: 'top-serif-i.svg'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + serifWidth / 2
		spacingRight: 50 * spacing + 70 + serifWidth / 2
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (57)
					y: 0
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
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
			base: 'dot'
			parentAnchors:
				0:
					x: contours[0].nodes[0].x - 95 / 2 - minThickness / 2
					y: xHeight + diacriticHeight
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: contours[0].nodes[0].x + 95 / 2 + minThickness / 2
					y: xHeight + diacriticHeight
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: xHeight
					directionY: -1
					right: false
			transformOrigin: Array( contours[0].nodes[1].expandedTo[1].x, contours[0].nodes[1].expandedTo[1].y )
			transforms: Array( [ 'skewY', spurHeight * (15) + 'deg' ] )
