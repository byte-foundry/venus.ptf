exports.glyphs['e_cap_ogonek'] =
	unicode: 'Ę'
	glyphName: 'Eogonek'
	characterName: 'LATIN CAPITAL LETTER E WITH OGONEK'
	base: 'E_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'ogonek'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
