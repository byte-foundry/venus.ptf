exports.glyphs['none'] =
	glyphName: 'none'
	characterName: 'NONE'
	anchors:
		0:
			x: parentAnchors[3].noneOne.x
			y: parentAnchors[3].noneOne.y
			dirOut: parentAnchors[3].noneOne.dirIn
		1:
			x: parentAnchors[3].noneThree.x
			y: parentAnchors[3].noneThree.y
			dirIn:parentAnchors[3].noneThree.dirIn
		2:
			x: parentAnchors[3].noneFour.x
			y: parentAnchors[3].noneFour.y
			dirOut:parentAnchors[3].noneFour.dirIn
		3:
			x: parentAnchors[3].noneTwo.x
			y: parentAnchors[3].noneTwo.y
			dirIn:parentAnchors[3].noneTwo.dirOut
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut:anchors[0].dirOut
				1:
					x: anchors[1].x
					y: anchors[1].y
					dirIn:anchors[1].dirIn
					typeOut: 'line'
				2:
					x: anchors[2].x
					y: anchors[2].y
					dirOut:anchors[2].dirOut
					typeIn: 'line'
				3:
					x: anchors[3].x
					y: anchors[3].y
					dirIn:anchors[3].dirIn
					typeOut: 'line'
