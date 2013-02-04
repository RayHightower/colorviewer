class ColorChangeController < UIViewController

  attr_accessor :color_detail_controller

  def viewDidLoad

    super

    self.title = "Change Color"
    self.view.backgroundColor = UIColor.whiteColor

    @text_field = UITextField.alloc.initWithFrame(CGRectZero)
    @text_field.borderStyle = UITextBorderStyleRoundedRect
    @text_field.textAlignment = UITextAlignmentCenter
    @text_field.placeholder = "Enter a color"
    @text_field.center = [self.view.frame.size.width / 2,
                          self.view.frame.size.width / 2 - 170]

    self.view.addSubview(@text_field)

    @button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.setTitle("Change", forState:UIControlStateNormal)
    @button.frame = [[@text_field.frame.origin.x, @text_field.frame.origin.y + @text_field.frame.size.height + 10 ],
                     @text_field.frame.size]

    self.view.addSubview(@button)

    @button.addTarget(self,
                      action:"change_color",
                      forControlEvents:UIControlEventTouchUpInside)
  end

  def change_color

    puts "change_color invoked in color_change_controller.rb"
    
  end

end
