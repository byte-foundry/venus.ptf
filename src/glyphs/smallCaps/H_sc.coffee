exports.glyphs['H_sc'] =
	unicode: 'ʜ'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'smallcap'
	]
	components:
		0:
			base: 'H_cap'
			parentParameters:
				capHeight: scCapHeight
				thickness: scThickness
				width: scWidth
			parentAnchors:
				0:
					x: 0
					y: 0
