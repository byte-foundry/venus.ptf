exports.glyphs['e_ogonek'] =
	unicode: 'ę'
	glyphName: 'eogonek'
	characterName: 'LATIN SMALL LETTER E WITH OGONEK'
	base: 'e'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'ogonek'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[2].x
					y: parentAnchors[2].y
