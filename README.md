<a href="https://github.com/RGSSoftware/HireMe">
  <img src="https://github.com/RGSSoftware/HireMe/blob/master/HireMeBanner.png" >
</a>

# RGSHueView

A while back I created RGSColorSlider and while creating it I used an image for the color gradient track. Using an image is not ideal, but, at the time, assessable. While browsing Github one day I stumble across [GradientProgressView]. [GradientProgressView] in it’s own right is a cool project, but what was surprising is the creation of a hue gradient purely in code. I really liked this solution so much I decide to create it in swift.

Simply added RGSHueView.swift to your project then declare your UIView as RGSHueView and you’re good to.

[GradientProgressView]: <https://github.com/nrj/GradientProgressView>

```swift		
 -private func commonInit()  {		
 -  guard let gradientLayer = self.layer as? CAGradientLayer else { return }		
 -        		
 -  gradientLayer.startPoint = CGPointMake(0.0, 0.5)		
 -  gradientLayer.endPoint = CGPointMake(1.0, 0.5)		
 -        		
 -  let colors : NSMutableArray = []		
 -  var deq = 0		
 -  while deq <= 360 {		
 -    let color = UIColor(hue: 1.0 * CGFloat(deq) / 360.0, saturation: 1.0, brightness: 1.0, alpha: 1.0)		
 -    colors.addObject(color.CGColor)		
 -            		
 -    deq += 5		
 -  }		
 -  gradientLayer.colors = colors as [AnyObject]		
 -		
 -}
 
 ```
