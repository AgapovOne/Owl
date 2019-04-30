//
//  Shared.swift
//  FlowKit2
//
//  Created by dan on 27/03/2019.
//  Copyright © 2019 FlowKit2. All rights reserved.
//

import UIKit

/// Events you can monitor from the director and related to the table
public struct ScrollViewEventsHandler {

	var didScroll: ((UIScrollView) -> Void)? = nil
	var endScrollingAnimation: ((UIScrollView) -> Void)? = nil

	var shouldScrollToTop: ((UIScrollView) -> Bool)? = nil
	var didScrollToTop: ((UIScrollView) -> Void)? = nil

	var willBeginDragging: ((UIScrollView) -> Void)? = nil
	var willEndDragging: ((_ scrollView: UIScrollView, _ velocity: CGPoint, _ targetOffset: UnsafeMutablePointer<CGPoint>) -> Void)? = nil
	var endDragging: ((_ scrollView: UIScrollView, _ willDecelerate: Bool) -> Void)? = nil

	var willBeginDecelerating: ((UIScrollView) -> Void)? = nil
	var endDecelerating: ((UIScrollView) -> Void)? = nil

	// zoom
	var viewForZooming: ((UIScrollView) -> UIView?)? = nil
	var willBeginZooming: ((_ scrollView: UIScrollView, _ view: UIView?) -> Void)? = nil
	var endZooming: ((_ scrollView: UIScrollView, _ view: UIView?, _ scale: CGFloat) -> Void)? = nil
	var didZoom: ((UIScrollView) -> Void)? = nil

	var didChangeAdjustedContentInset: ((UIScrollView) -> Void)? = nil

}
