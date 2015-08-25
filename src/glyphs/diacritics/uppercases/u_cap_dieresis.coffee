exports.glyphs['u_cap_dieresis'] =
	unicode: 'Ü'
	ot:
		advanceWidth: width * 750 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'U_cap'
			parentAnchors:
				0:
					x: 0
					y: 0
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: 360 + thickness / 4 - 42 - thickness / 2
					y: capHeight + 70
			parentParameters:
				thickness:
					if thickness < 40
					then 40
					else thickness
		2:
			base: 'dot'
			parentAnchors:
				0:
					x: 360 + thickness / 4 + 42 + thickness / 2
					y: capHeight + 70
			parentParameters:
				thickness:
					if thickness < 40
					then 40
					else thickness
