exports.glyphs['e_cap_acute'] =
	unicode: 'É'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'E_cap'
			parentAnchors:
				0:
					x: 0
					y: 0
		1:
			base: 'acute'
			parentAnchors:
				0:
					x: 270
					y: capHeight + 70
