exports.glyphs['l_slash'] =
	unicode: 'ł'
	glyphName: 'lslash'
	characterName: 'LATIN SMALL LETTER L WITH STROKE'
	base: 'l'
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
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[2].x
					y: parentAnchors[2].y
				1:
					x: parentAnchors[3].x
					y: parentAnchors[3].y
