exports.glyphs['ellipsis'] =
	unicode: '…'
	glyphName: "ellipsis"
	characterName: "HORIZONTAL ELLIPSIS"
	ot:
		advanceWidth: spacingLeft + minThickness + 75 + minThickness + 75 + minThickness + spacingRight
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
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness + 75 + minThickness / 2
					y: 0
		2:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness + 75 + minThickness + 75 + minThickness / 2
					y: 0
