exports.glyphs['ellipsis'] =
	unicode: '…'
	ot:
		advanceWidth: spacingLeft + minThickness * 3 + Math.min( 50, 70 * width ) * 2 + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing
		spacingRight: 50 * spacing + minThickness
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: minThickness
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2 + minThickness + Math.min( 50, 70 * width )
					y: minThickness
		2:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2 + minThickness + Math.min( 50, 70 * width ) + minThickness + Math.min( 50, 70 * width )
					y: minThickness
