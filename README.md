# AVFoundationCustum


#### AVFoundation之视频捕捉
当使用`AV Foundation` 的捕捉API时，一定要理解屏幕坐标系和捕捉设备坐标系不同。iOS6.0之前的版本，要在这2个坐标空间进行转换非常困难。要精确的将屏幕坐标点转换为摄像头坐标点。开发者必须考虑诸如视频重力、镜像、图层变换和方向等因素进行综合计算。幸运的是，`AVCaptureVideoPreviewLayer`现在定义了一个转换方法让这一过程变得简单多了。

`AVCaptureVideoPreviewLayer`定义了2个方法用于坐标系间进行转换：

`captureDevicePointOfInterestForPoint:`获取屏幕坐标系的CGPoint 数据，返回转换得到的设备坐标系CGPoint数据。

`pointForCaptureDevicePointOfInterest:`获取摄像头坐标系的CGPoint数据，返回转换得到的屏幕坐标系CGPoint 数据。
`THPreviewView` 使用`captureDevicePointOfInterestForPoint:`方法将用户触点信息转换为摄像头设备坐标系的中的点。在项目中点击对焦和点击曝光功能实现会用到这个转换坐标点。

> 要弄明白预览视图的创建 和 坐标空间转换的方法。

