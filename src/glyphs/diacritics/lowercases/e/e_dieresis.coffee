exports.glyphs['e_dieresis'] =
	unicode: 'ë'
	glyphName: 'edieresis'
	characterName: 'LATIN SMALL LETTER E WITH DIAERESIS'
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
			base: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - 60 - ( 15 / 85 ) * thickness * width
					y: parentAnchors[0].y
		1:
			base: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + 60 + ( 15 / 85 ) * thickness * width
					y: parentAnchors[0].y
