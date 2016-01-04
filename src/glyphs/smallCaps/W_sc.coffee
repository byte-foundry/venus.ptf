exports.glyphs['W_sc'] =
	unicode: 'ᴡ'
	glyphName: "wsmall"
	characterName: "LATIN LETTER SMALL CAPITAL W"
	ot:
		advanceWidth: width * 980 + thickness * 2 - ( 86 * 2 )
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
			base: 'W_cap'
			parentParameters:
				capHeight: scCapHeight
				thickness: scThickness
				width: scWidth
			parentAnchors:
				0:
					x: 0
					y: 0
