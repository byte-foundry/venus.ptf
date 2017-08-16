exports.glyphs['l_cap_slash'] =
	unicode: 'Ł'
	glyphName: 'Lslash'
	characterName: 'LATIN CAPITAL LETTER L WITH STROKE'
	base: 'L'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: '_slash'
			id: '_slash'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[2].x
					y: parentAnchors[2].y
				1:
					x: parentAnchors[3].x
					y: parentAnchors[3].y
