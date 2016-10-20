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
					x: anchors[2].x
					y: anchors[2].y
				1:
					x: anchors[3].x
					y: anchors[3].y
