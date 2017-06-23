exports.glyphs['serif-curve-inside-auto'] =
	anchors:
		0:
			serif: Utils.makeCurveInsideSerif(
				parentAnchors[0],
				serifHeight,
				serifWidth,
				serifMedian,
				serifCurve,
				serifTerminal,
				thickness
				midWidth,
				serifRotate
			)
			point0: anchors[0].serif[0]
			point1: anchors[0].serif[1]
			point2: anchors[0].serif[2]
			point3: anchors[0].serif[3]
			point4: anchors[0].serif[4]
			point5: anchors[0].serif[5]
			point6: anchors[0].serif[6]
			point7: anchors[0].serif[7]
			point8: anchors[0].serif[8]
	tags: [
		'component'
	]
	contours:
		0:
			closed: true
			nodes:
				0:
					x: anchors[0].point0.x
					y: anchors[0].point0.y
					dirOut: anchors[0].point0.dirOut
					typeOut: anchors[0].point0.typeOut
					typeIn: anchors[0].point0.typeIn
				1:
					x: anchors[0].point1.x
					y: anchors[0].point1.y
					dirIn: anchors[0].point1.dirIn
					typeOut: 'line'
					typeIn: anchors[0].point1.typeIn
				2:
					x: anchors[0].point2.x
					y: anchors[0].point2.y
					dirOut: anchors[0].point2.dirOut
					typeIn: 'line'
				3:
					x: anchors[0].point3.x
					y: anchors[0].point3.y
					dirIn: anchors[0].point3.dirIn
					dirOut: anchors[0].point3.dirIn
					typeOut: anchors[0].point3.typeOut
				4:
					x: anchors[0].point4.x
					y: anchors[0].point4.y
					dirIn: anchors[0].point4.dirIn
					typeOut: anchors[0].point4.typeOut
				5:
					x: anchors[0].point5.x
					y: anchors[0].point5.y
					typeIn: anchors[0].point5.typeIn
				6:
					x: anchors[0].point6.x
					y: anchors[0].point6.y
					typeOut: 'line'
					typeIn: 'line'
				7:
					x: anchors[0].point7.x
					y: anchors[0].point7.y
					dirIn: anchors[0].point7.dirIn
					dirOut: anchors[0].point7.dirOut
					typeOut: anchors[0].point7.typeOut
					typeIn: anchors[0].point7.typeIn
					tensionOut: anchors[0].point7.tensionOut
				8:
					x: anchors[0].point8.x
					y: anchors[0].point8.y
					dirIn: anchors[0].point8.dirIn
					dirOut: anchors[0].point8.dirIn
					typeOut: anchors[0].point8.typeOut
					tensionIn: anchors[0].point8.tensionIn
