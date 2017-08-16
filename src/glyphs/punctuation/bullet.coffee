exports.glyphs['bullet'] =
	unicode: '•'
	glyphName: 'bullet'
	characterName: 'BULLET'
	ot:
		advanceWidth: spacingLeft + minThickness + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
	components:
		0:
			base: 'dot'
			id: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: xHeight / 2 - minThickness / 2
			parentParameters:
				minThickness: minThickness * 1.25
