exports.glyphs['i_cap_circumflex'] =
	unicode: 'Î'
	ot:
		advanceWidth: width * 420 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'I_cap'
			parentAnchors:
				0:
					x: 0
					y: 0
		1:
			base: 'circumflex'
			parentAnchors:
				0:
					x: 200
					y: capHeight + 70
