exports.glyphs['O_sc'] =
	unicode: 'ᴏ'
	glyphName: "osmall"
	characterName: "LATIN LETTER SMALL CAPITAL O"
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
			base: 'O_cap'
			parentParameters:
				capHeight: scCapHeight
				thickness: scThickness
				width: scWidth
				width: 0.85
			parentAnchors:
				0:
					x: 0
					y: 0
