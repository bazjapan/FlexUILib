package utils.positioning
{
	import mx.core.IVisualElement;
	import mx.core.IVisualElementContainer;

	public function bringForward(ve:IVisualElement, vec:IVisualElementContainer):void
	{
		var currentIndex:int=vec.getElementIndex(ve);
		if (currentIndex<vec.numElements-1)
		currentIndex++;
		vec.setElementIndex(ve,currentIndex);
	}
	
}