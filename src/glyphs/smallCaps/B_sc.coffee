exports.glyphs['B_sc'] =
	unicode: 'ʙ'
	glyphName: "bsmall"
	characterName: "LATIN LETTER SMALL CAPITAL B"
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'smallcap'
	]
	components:
		0:
			base: 'B_cap'
			parentParameters:
				capHeight: scCapHeight
				thickness: scThickness
				width: scWidth
			parentAnchors:
				0:
					x: 0
					y: 0
