package utils.positioning
{
	import mx.core.IVisualElement;
	import mx.core.IVisualElementContainer;
	
	public function bringToFront(ve:IVisualElement, vec:IVisualElementContainer):void
	{
		var currentIndex:int=vec.getElementIndex(ve);
		if (currentIndex<vec.numElements-1)
			vec.setElementIndex(ve,vec.numElements-1);
	}
	
}