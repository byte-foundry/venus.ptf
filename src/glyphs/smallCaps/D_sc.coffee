exports.glyphs['D_sc'] =
	unicode: 'ᴅ'
	glyphName: "dsmall"
	characterName: "LATIN LETTER SMALL CAPITAL D"
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
			base: 'D_cap'
			parentParameters:
				capHeight: scCapHeight
				thickness: scThickness
				width: scWidth
			parentAnchors:
				0:
					x: 0
					y: 0
