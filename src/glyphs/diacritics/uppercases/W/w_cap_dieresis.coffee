exports.glyphs['w_cap_dieresis'] =
	unicode: 'Ẅ'
	glyphName: 'Wdieresis'
	characterName: 'LATIN CAPITAL LETTER W WITH DIAERESIS'
	base: 'W_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
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
