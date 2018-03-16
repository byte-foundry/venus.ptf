exports.glyphs['caron'] =
	glyphName: "caron"
	characterName: "CARON"
	global: true
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	components:
		0:
			base: 'circumflex'
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
			transformOrigin: Object({x: anchors[0].x, y: anchors[0].y + 150 / 2})
			transforms: Array( [ 'scaleY', -1 ] )
