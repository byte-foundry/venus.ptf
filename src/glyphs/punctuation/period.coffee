exports.glyphs['period'] =
	unicode: '.'
	glyphName: "period"
	characterName: "FULL STOP"
	ot:
		advanceWidth: spacingLeft + minThickness + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing
		spacingRight: 50 * spacing
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: 0
