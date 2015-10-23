exports.glyphs['serif-c'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
		2:
			directionX: parentAnchors[2].directionX || 1
			baseRight: if typeof parentAnchors[2].baseRight != 'undefined' then parentAnchors[2].baseRight else { x: parentAnchors[0].x, y: parentAnchors[0].y }
			baseLeft: if typeof parentAnchors[2].baseLeft != 'undefined' then parentAnchors[2].baseLeft else { x: parentAnchors[1].x, y: parentAnchors[1].y }
			leftWidth: parentAnchors[2].leftWidth * Math.min( serifWidth / 65, 1 ) || 0
			rightWidth: parentAnchors[2].rightWidth * Math.min( serifWidth / 65, 1 ) || 0
			serifMedianRight: parentAnchors[2].serifMedianRight || 0
			serifMedianLeft: parentAnchors[2].serifMedianLeft || 0
			angleTop: parentAnchors[2].angleTop || 45 + 'deg'
			angleBottom: parentAnchors[2].angleBottom || 45 + 'deg'
			maxWidthBottom: if typeof parentAnchors[2].maxWidthBottom != 'undefined' then parentAnchors[2].maxWidthBottom else false
			maxWidthTop: if typeof parentAnchors[2].maxWidthTop != 'undefined' then parentAnchors[2].maxWidthTop else false
			oncurveSerifTopHeight: parentAnchors[2].oncurveSerifTopHeight || { x: parentAnchors[0].x, y: parentAnchors[0].y }
			oncurveSerifBottomHeight: parentAnchors[2].oncurveSerifBottomHeight || { x: parentAnchors[1].x, y: parentAnchors[1].y }
			# testTop: if anchors[2].oncurveSerifTopHeight.y + serifWidth < anchors[2].baseRight.y then true else false
			testTop: if serifWidth < 10 then true else false
			# testBottom: if anchors[2].oncurveSerifBottomHeight.y - serifWidth > anchors[2].baseLeft.y then true else false
			testBottom: if serifWidth < 10 then true else false
			left: if typeof parentAnchors[2].left != 'undefined' then parentAnchors[2].left else true
			right: if typeof parentAnchors[2].right != 'undefined' then parentAnchors[2].right else true
			topAngle: parentAnchors[2].topAngle
			bottomAngle: parentAnchors[2].bottomAngle
			serifTransformOrigin: parentAnchors[2].serifTransformOrigin || [ 0, 0 ]
			serifTransform: - parentAnchors[2].serifTransform || 0
	tags: [
		'component'
	]
	contours:
		0:
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: anchors[2].angleBottom
					tensionOut: serifRoundness
					transformOrigin: anchors[2].serifTransformOrigin
					transforms: Array(
						[ 'skewX', anchors[2].serifTransform + 'deg' ]
					)
				1:
					x:
						if anchors[2].testTop || !anchors[2].right
						# then anchors[2].oncurveSerifTopHeight.x
						then anchors[2].baseRight.x
						else contours[0].nodes[4].x - serifHeight * anchors[2].directionX
							# if anchors[2].directionX == 1
							# then contours[0].nodes[4].x - serifHeight
							# else contours[0].nodes[4].x + serifHeight
					y:
						if anchors[2].testTop || !anchors[2].right
						# then anchors[2].oncurveSerifTopHeight.y
						then anchors[2].baseRight.y
						else contours[0].nodes[2].y - ( serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) ) * 0.25
					dirOut:
						if anchors[2].testTop || !anchors[2].right
						then Math.max( anchors[2].topAngle, anchors[2].oncurveSerifTopHeight.normal )
						else
							if anchors[2].directionX == 1
							then Math.max(
								Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ),
								Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
							)
							else Math.min(
								Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ),
								Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
							)
					# dirIn: Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
					tensionIn: 0.75 * serifRoundness
					type: 'smooth'
				2:
					x:
						if anchors[2].testTop || !anchors[2].right
						# then anchors[2].oncurveSerifTopHeight.x
						then anchors[2].baseRight.x
						else
							if anchors[2].directionX == 1
							then Math.min( contours[0].nodes[4].x, contours[0].nodes[4].x - serifHeight * serifMedian + anchors[2].serifMedianRight)
							else Math.max( contours[0].nodes[4].x, contours[0].nodes[4].x + serifHeight * serifMedian - anchors[2].serifMedianRight)
					y:
						if anchors[2].testTop || !anchors[2].right
						# then anchors[2].oncurveSerifTopHeight.y
						then anchors[2].baseRight.y
						else
							if anchors[2].maxWidthTop
							then Math.min(
								anchors[2].maxWidthTop,
								anchors[2].baseRight.y + serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth )
							)
							else anchors[2].baseRight.y + serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth )
					dirIn:
						if anchors[2].testTop || !anchors[2].right
						then anchors[2].oncurveSerifTopHeight.normal
						else - 90 + 'deg'
					dirOut: Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
					tensionOut: serifTerminalCurve
				3:
					x:
						if anchors[2].testTop || !anchors[2].right
						then anchors[2].baseRight.x
						else
							if anchors[2].directionX == 1
							then contours[0].nodes[2].x + ( contours[0].nodes[4].x - contours[0].nodes[2].x ) / 2
							else contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) / 2
					y:
						if anchors[2].testTop || !anchors[2].right
						then anchors[2].baseRight.y
						else contours[0].nodes[2].y + ( contours[0].nodes[4].y - contours[0].nodes[2].y ) / 2 + serifTerminal * serifWidth
					dirIn: Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[4].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				4:
					x:
						if anchors[2].testTop || !anchors[2].right
							if anchors[2].directionX == 1
							then anchors[2].baseRight.x
							else anchors[2].baseLeft.x
						else
							if anchors[2].directionX == 1
							then Math.max( anchors[2].baseLeft.x, anchors[2].baseRight.x)
							else Math.min( anchors[2].baseLeft.x, anchors[2].baseRight.x)
					y:
						if anchors[2].testTop || !anchors[2].right
							if anchors[2].directionX == 1
							then anchors[2].baseRight.y
							else anchors[2].baseLeft.y
						else
							if anchors[2].maxWidthTop
							then Math.min(
								anchors[2].maxWidthTop,
								anchors[2].baseRight.y + ( serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) ) * midWidth
							)
							else anchors[2].baseRight.y + ( serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) ) * midWidth
					dirIn: 90 + 'deg'
					dirOut: Utils.lineAngle( contours[0].nodes[4].point, contours[0].nodes[6].point )
					tensionIn: serifTerminalCurve
				5:
					x: contours[0].nodes[4].x + ( contours[0].nodes[6].x - contours[0].nodes[4].x ) / 2
					y: contours[0].nodes[6].y + ( contours[0].nodes[4].y - contours[0].nodes[6].y ) / 2
					dirIn: anchors[2].baseRight.normal
					dirOut: Utils.lineAngle( contours[0].nodes[4].point, contours[0].nodes[6].point )
				6:
					x:
						if !anchors[2].left
							if anchors[2].maxWidthTop
							then anchors[2].baseRight.x
							else anchors[2].baseLeft.x
						else
							if anchors[2].directionX == 1
								if anchors[2].testBottom
								then anchors[2].baseRight.x
								else Math.max( anchors[2].baseLeft.x, anchors[2].baseRight.x)
							else Math.min( anchors[2].baseLeft.x, anchors[2].baseRight.x)
					y:
						if !anchors[2].left
							if anchors[2].maxWidthTop
							then anchors[2].baseRight.y
							else anchors[2].baseLeft.y
						else
							if anchors[2].testBottom
								if anchors[2].directionX == 1
								then anchors[2].baseRight.y
								else Math.min( anchors[2].baseLeft.y, anchors[2].baseRight.y)
							else
								if anchors[2].maxWidthBottom
								then Math.max(
									anchors[2].maxWidthBottom,
									anchors[2].baseLeft.y - ( serifWidth + anchors[2].leftWidth * Math.min( 1, serifWidth ) ) * midWidth
								)
								else anchors[2].baseLeft.y - ( serifWidth + anchors[2].leftWidth * Math.min( 1, serifWidth ) ) * midWidth
					dirIn: Utils.lineAngle( contours[0].nodes[4].point, contours[0].nodes[6].point )
					dirOut: - 90 + 'deg'
				7:
					x:
						if anchors[2].testBottom || !anchors[2].left
						then anchors[2].baseLeft.x
						else
							if anchors[2].baseLeft.x < anchors[2].baseLeft.x
							then anchors[2].oncurveSerifBottomHeight.x + ( anchors[2].baseLeft.x - anchors[2].oncurveSerifBottomHeight.x ) / 2
							else
								if anchors[2].directionX == 1
								then contours[0].nodes[8].x + ( contours[0].nodes[6].x - contours[0].nodes[8].x ) / 2
								else contours[0].nodes[6].x + ( contours[0].nodes[8].x - contours[0].nodes[6].x ) / 2
					y:
						if anchors[2].testBottom || !anchors[2].left
						then anchors[2].baseLeft.y
						else contours[0].nodes[8].y + ( contours[0].nodes[6].y - contours[0].nodes[8].y ) / 2 - serifTerminal * serifWidth
					dirOut: Utils.lineAngle( contours[0].nodes[6].point, contours[0].nodes[8].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				8:
					x:
						if anchors[2].testBottom || !anchors[2].left
						# then anchors[2].oncurveSerifBottomHeight.x
							if anchors[2].directionX == 1
							then anchors[2].baseLeft.x
							else anchors[2].baseRight.x
						else
							if anchors[2].directionX == 1
							then Math.min( contours[0].nodes[6].x, contours[0].nodes[6].x - (serifHeight * serifMedian - anchors[2].serifMedianLeft) )
							else Math.max( contours[0].nodes[6].x, contours[0].nodes[6].x + (serifHeight * serifMedian - anchors[2].serifMedianLeft) )
					y:
						if anchors[2].testBottom || !anchors[2].left
						# then anchors[2].oncurveSerifBottomHeight.y
							if anchors[2].directionX == 1
							then anchors[2].baseLeft.y
							else anchors[2].baseRight.y
						else
							if anchors[2].maxWidthBottom
							then Math.max(
								anchors[2].maxWidthBottom,
								anchors[2].baseLeft.y - serifWidth - anchors[2].leftWidth * Math.min( 1, serifWidth )
							)
							else anchors[2].baseLeft.y - serifWidth - anchors[2].leftWidth * Math.min( 1, serifWidth )
					dirIn: Utils.lineAngle( contours[0].nodes[8].point, contours[0].nodes[9].point )
					dirOut:
						if anchors[2].testBottom || !anchors[2].left
						then anchors[2].bottomAngle
						else 90 + 'deg'
					# type: 'smooth'
				9:
					x:
						if anchors[2].testBottom || !anchors[2].left
							if anchors[2].directionX == 1
							then anchors[2].baseLeft.x
							else anchors[2].baseRight.x
						else contours[0].nodes[6].x - serifHeight * anchors[2].directionX
					y:
						if anchors[2].testBottom || !anchors[2].left
							if anchors[2].directionX == 1
							then anchors[2].baseLeft.y
							else anchors[2].baseRight.y
						else contours[0].nodes[8].y + ( serifWidth + anchors[2].leftWidth * Math.min( 1, serifWidth ) ) * 0.25
					dirOut:
						if !anchors[2].left
							anchors[2].bottomAngle
						else
							if anchors[2].testBottom
							then Math.min( anchors[2].bottomAngle, anchors[2].oncurveSerifBottomHeight.normal )
							else
								if anchors[2].directionX == 1
								then Math.min( Utils.lineAngle( contours[0].nodes[9].point, contours[0].nodes[10].point ), Utils.lineAngle( contours[0].nodes[8].point, contours[0].nodes[9].point ) )
								else Math.max( Utils.lineAngle( contours[0].nodes[9].point, contours[0].nodes[10].point ), Utils.lineAngle( contours[0].nodes[8].point, contours[0].nodes[9].point ) )
					type: 'smooth'
					tensionOut: 0.75 * serifRoundness
				10:
					x: anchors[1].x
					y: anchors[1].y
					dirIn: anchors[2].angleTop
					tensionIn: serifRoundness
					typeOut: 'line'
					transformOrigin: anchors[2].serifTransformOrigin
					transforms: Array(
						[ 'skewX', anchors[2].serifTransform + 'deg' ]
					)
