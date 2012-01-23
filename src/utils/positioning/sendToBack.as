package utils.positioning
{
	import mx.core.IVisualElement;
	import mx.core.IVisualElementContainer;

	public function sendToBack(ve:IVisualElement, vec:IVisualElementContainer):void
		{
			var currentIndex:int=vec.getElementIndex(ve);
			if (currentIndex>0)
				vec.setElementIndex(ve,0);
		}
	
}