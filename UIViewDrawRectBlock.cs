using System.Drawing;

namespace UIViewDrawRectBlock {

	[Category, BaseType (typeof (UIView))]
	public partial interface UIView_DrawRectBlock_UIView {

		[Static, Export ("viewWithDrawRectBlock:")]
		UIView ViewWithDrawRectBlock (UIViewDrawRectBlock block);

		[Static, Export ("viewWithFrame:drawRectBlock:")]
		UIView ViewWithFrame (RectangleF frame, UIViewDrawRectBlock block);
	}
}
