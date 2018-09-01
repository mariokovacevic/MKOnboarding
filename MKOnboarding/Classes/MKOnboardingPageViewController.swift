//
//  MKOnboardingPageViewController.swift
//
//
//  Created by Mario Kovacevic on 01/09/2018.
//  Copyright © 2018 Mario Kovacevic. All rights reserved.
//

import UIKit

public struct MKOnboardingItem {
    public var title: String
    public var description: String
    public var imageName: String
    
    public init(title: String, description: String, imageName: String) {
        self.title = title
        self.description = description
        self.imageName = imageName
    }
}


public class MKOnboardingPageViewController: UIPageViewController {
    
    //MARK: - Properties
    public var onboardingItems = [MKOnboardingItem]()
    
    public init(onboardingItems: [MKOnboardingItem]) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        self.onboardingItems = onboardingItems
        
        let pageControl = UIPageControl.appearance()
        pageControl.currentPageIndicatorTintColor = .white
        pageControl.pageIndicatorTintColor = .gray
        
        self.dataSource = self
        self.delegate = self
        
        setViewControllers([arrayOnboardingViewControllers.first!], direction: .forward, animated: true, completion: nil)
    }

    override public func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let subViews = view.subviews
        var scrollView: UIScrollView? = nil
        var pageControl: UIPageControl? = nil
        
        for view in subViews {
            if view is UIScrollView {
                scrollView = view as? UIScrollView
            }
            else if view is UIPageControl {
                pageControl = view as? UIPageControl
            }
        }
        
        if (scrollView != nil && pageControl != nil) {
            scrollView?.frame = view.bounds
            view.bringSubview(toFront: pageControl!)
        }
    }
    
    //MARK: - Create VC
    lazy var arrayOnboardingViewControllers: [MKOnboardingViewController] = {
        var onboardingViewControllers = [MKOnboardingViewController]()
        for item in self.onboardingItems {
            onboardingViewControllers.append(MKOnboardingViewController(onboardingItem: item))
        }
        return onboardingViewControllers
    }()
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
//MARK: - Extension
extension MKOnboardingPageViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewVC = viewController as? MKOnboardingViewController else { return nil }
        if let index = arrayOnboardingViewControllers.index(of: viewVC) {
            if index > 0 {
                return arrayOnboardingViewControllers[index - 1]
            }
        }
        return nil
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewVC = viewController as? MKOnboardingViewController else { return nil }
        if let index = arrayOnboardingViewControllers.index(of: viewVC) {
            if index < onboardingItems.count - 1 {
                return arrayOnboardingViewControllers[index + 1]
            }
        }
        return nil
    }
    
    public func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return onboardingItems.count
    }
    
    public func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
