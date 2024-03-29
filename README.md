# PageIndicator

### PageIndicator provides a custom PageControl indicator 

## Installation

To install PageIndicator package, import `https://github.com/mkilmerr/PageIndicator.git` in SPM

## Usage example 


```swift 

    private var pageControl: PageIndicator = {
        let pageIndicator = PageIndicator(pages: 23, currentPageIndex: 6)
        pageIndicator.translatesAutoresizingMaskIntoConstraints = false
        return pageIndicator
    }()
    
```

## Custom Style 

```swift 

    private var pageControl: PageIndicator = {
        let pageIndicator = PageIndicator(pages: 5, currentPageIndex: 2, color: .pink, borderColor: .blue)
        pageIndicator.translatesAutoresizingMaskIntoConstraints = false
        return pageIndicator
    }()
    
```

## Previous and Next Dot ( to update current page dot index)

```swift 
    pageControl.next() /// increased one step to the page indicator 
    pageControl.previous() /// decreased one step to the page indicator
```
