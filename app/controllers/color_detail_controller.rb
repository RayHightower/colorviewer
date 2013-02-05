# Classes are compiled in alphabetical order. So you can't inherit from
# a class that hasn't been compiled yet!!!
#
class ColorDetailController < UIViewController

  def initWithColor(color)
    self.initWithNibName(nil, bundle:nil)
    @color = color
    self
  end

  def viewDidLoad
    super
    self.view.backgroundColor = @color
    self.title = "Detail"

    rightButton = UIBarButtonItem.alloc.initWithTitle("Change",
                                                      style: UIBarButtonItemStyleBordered,
                                                      target: self,   # could target be the same as the receiver?
                                                      action: 'change_color')

    self.navigationItem.rightBarButtonItem = rightButton

  end

  def change_color
    puts "change_color invoked in color_detail_controller.rb"

    controller = ChangeColorController.alloc.initWithNibName(nil, bundle:nil)
    controller.color_detail_controller = self
    self.presentViewController(UINavigationController.alloc.initWithRootViewController(controller),
                               animated: true,
                               completion: lambda {})

  end

end
