exports.glyphs['serif-curve-outside'] =
	parameters:
		serifCurve:
			if serifHeight == 0
			then serifCurve = 0
			else serifCurve = serifCurve
		serifHeight:
			if serifWidth < 0.05
			then serifHeight = 0
			else
				if serifWidth >= 0.05
				then Math.max(serifHeight, 3)
				else serifHeight = serifHeight
	anchors:
		0:
			y: parentAnchors[0].base.y
			x: parentAnchors[0].base.x + Math.max( 0, serifArc * serifHeight )
		1:
			x: ( parentAnchors[0].base.x + parentAnchors[0].opposite.x ) / 2
			y: ( parentAnchors[0].base.y + parentAnchors[0].opposite.y ) / 2
		2:
			rotate: parentAnchors[0].rotate || 0
			fakePointTwoY: anchors[0].y - (serifWidth || 1)
			fakePointTwoX: anchors[0].x - serifHeight
			onOutsideCurve: Utils.pointOnCurve( anchors[2].leftSerifCurveIntersect[0], anchors[2].leftSerifCurveIntersect[1], serifCurve, true, 50 )
			serifCurveIntersect: Utils.lineCurveIntersection( parentAnchors[0].curveEnd, parentAnchors[0].base, {x: anchors[2].fakePointTwoX, y: 0}, {x: anchors[2].fakePointTwoX, y: 100})
			leftSerifCurveIntersect: anchors[2].serifCurveIntersect.left
			zeroLeftSerifCurveIntersect: anchors[2].leftSerifCurveIntersect[1]
			pointTwoYAxis: Math.max( anchors[0].y - serifWidth, anchors[3].y )
			pointTwoXAxis: anchors[2].fakePointTwoX - serifHeight * (serifMedian - 1) * Math.abs(anchors[2].zeroLeftSerifCurveIntersect.y - anchors[2].pointTwoYAxis ) / (Math.abs(anchors[2].zeroLeftSerifCurveIntersect.y - anchors[2].fakePointTwoY) || 0.01)
			distanceFromZeroLeftToPointTwo: Utils.distance(anchors[2].zeroLeftSerifCurveIntersect.x, anchors[2].zeroLeftSerifCurveIntersect.y, anchors[2].pointTwoXAxis, anchors[2].pointTwoYAxis)
			vectorFromZeroLeftToPointTwo: Utils.normalize(Utils.vectorFromPoints( anchors[2].zeroLeftSerifCurveIntersect, {x: anchors[2].pointTwoXAxis, y: anchors[2].pointTwoYAxis}))
			distanceFromZeroLeftToPointOne: Math.min(
				anchors[2].distanceFromZeroLeftToPointTwo * 0.85,
				serifCurve
			)
			pointOneYAxis: anchors[2].zeroLeftSerifCurveIntersect.y + anchors[2].vectorFromZeroLeftToPointTwo.y * anchors[2].distanceFromZeroLeftToPointOne
			pointOneXAxis: anchors[2].zeroLeftSerifCurveIntersect.x + anchors[2].vectorFromZeroLeftToPointTwo.x * anchors[2].distanceFromZeroLeftToPointOne
			pointOneXAxisIntersection: Utils.lineCurveIntersection( parentAnchors[0].curveEnd, parentAnchors[0].base, {x: anchors[2].pointOneXAxis, y: 0}, {x: anchors[2].pointOneXAxis, y: 100})
			leftPointOneXAxisIntersection: anchors[2].pointOneXAxisIntersection.left
			zeroLeftPointOneXAxisIntersection: anchors[2].leftPointOneXAxisIntersection[1]
			pointTwoXAxisIntersection: Utils.lineCurveIntersection( parentAnchors[0].curveEnd, parentAnchors[0].base, {x: anchors[2].pointTwoXAxis, y: 0}, {x: anchors[2].pointTwoXAxis, y: 100})
			leftPointTwoXAxisIntersection: anchors[2].pointTwoXAxisIntersection.left
			zeroLeftPointTwoXAxisIntersection: anchors[2].leftPointTwoXAxisIntersection[1]
		3:
			x: parentAnchors[0].curveEnd.x
			y: parentAnchors[0].curveEnd.y
	tags: [
		'component'
	]
	contours:
		0:
			closed: true
			nodes:
				0:
					#x: anchors[2].onOutsideCurve.x
					x: anchors[2].onOutsideCurve.x
					y: anchors[2].onOutsideCurve.y
					dirOut: anchors[2].onOutsideCurve.normal
					tensionOut: serifRoundness
					transformOrigin: contours[0].nodes[5].point
					transforms: Array([ 'skewX', anchors[2].rotate + 'deg' ])
				1:
					y: Math.min(
						anchors[2].pointOneYAxis,
						anchors[2].zeroLeftPointOneXAxisIntersection.y
					)
					x:
						if contours[0].nodes[1].y == anchors[2].zeroLeftPointOneXAxisIntersection.y
						then anchors[2].zeroLeftPointOneXAxisIntersection.x
						else anchors[2].pointOneXAxis
					dirIn:
						if contours[0].nodes[1].y == anchors[2].zeroLeftPointOneXAxisIntersection.y
						then Utils.lineAngle({x: 0, y:0}, anchors[2].zeroLeftPointOneXAxisIntersection.handleOut)
						else
							if Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[1].point ) < anchors[2].onOutsideCurve.normal + Math.PI/24 && Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[1].point ) > anchors[2].onOutsideCurve.normal - Math.PI/24
							then Utils.lineAngle(contours[0].nodes[1].point, contours[0].nodes[0].point) - Math.PI/12
							else Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
					typeOut: 'line'
					tensionIn: serifRoundness
					transformOrigin: contours[0].nodes[5].point
					transforms: Array([ 'skewX', anchors[2].rotate + 'deg' ])
				2:
					y: Math.min(
						anchors[2].pointTwoYAxis,
						anchors[2].zeroLeftPointTwoXAxisIntersection.y
					)
					x:
						if contours[0].nodes[2].y == anchors[2].zeroLeftPointTwoXAxisIntersection.y
						then anchors[2].zeroLeftPointTwoXAxisIntersection.x
						else anchors[2].pointTwoXAxis
					typeIn: 'line'
					type: 'corner'
					dirOut:
						if contours[0].nodes[2].y < contours[0].nodes[3].y && contours[0].nodes[2].y < contours[0].nodes[4].y && serifTerminal >= 0
						then 0 + 'deg'
						else
							if contours[0].nodes[2].y == anchors[2].zeroLeftPointTwoXAxisIntersection.y
							then -90 + 'deg'
							else Utils.lineAngle(contours[0].nodes[2].point, contours[0].nodes[1].point)
					tensionOut: serifTerminalCurve
					transformOrigin: contours[0].nodes[5].point
					transforms: Array([ 'skewX', anchors[2].rotate + 'deg' ])
				3:
					y:
						if serifWidth >= 0.01
						then contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 - anchors[0].y ) / serifWidth ) * ( serifMedian - 1 ) ) - serifTerminal * serifHeight
						else anchors[0].y
					x:
						if serifWidth >= 0.01
						then contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 - anchors[0].y ) / serifWidth ) * ( serifMedian - 1 ) )
						else anchors[0].x
					dirOut: Utils.lineAngle( contours[0].nodes[2].point ,contours[0].nodes[4].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
					transformOrigin: contours[0].nodes[5].point
					transforms: Array([ 'skewX', anchors[2].rotate + 'deg' ])
				4:
					y: Math.max(
						anchors[0].y - serifWidth * midWidth,
						anchors[3].y - serifWidth * (midWidth - 1)
					)
					x: anchors[0].x
					type: 'smooth'
					tensionIn: serifTerminalCurve
					dirOut:
						if serifWidth > 0
						then 90 + 'deg'
						else Utils.lineAngle(contours[0].nodes[4].point, contours[0].nodes[3].point)
					transformOrigin: contours[0].nodes[5].point
					transforms: Array([ 'skewX', anchors[2].rotate + 'deg' ])
				5:
					y: anchors[0].y
					x: anchors[0].x
					dirIn: - 90 + 'deg'
					typeOut: 'line'
					transformOrigin: contours[0].nodes[5].point
					transforms: Array([ 'skewX', anchors[2].rotate + 'deg' ])
				6:
					y: Math.min(
						anchors[0].y + serifWidth,
						parentAnchors[0].opposite.y
					)
					x: anchors[0].x
					typeOut: 'line'
				7:
					y: parentAnchors[0].opposite.y
					x: parentAnchors[0].opposite.x
					typeOut: 'line'
				8:
					y: contours[0].nodes[0].y
					x: contours[0].nodes[0].x
					typeOut: 'line'
