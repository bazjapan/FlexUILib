package utils.positioning
{
	import mx.core.IVisualElement;
	import mx.core.IVisualElementContainer;
	
	public function moveBack(ve:IVisualElement, vec:IVisualElementContainer):void
	{
		var currentIndex:int=vec.getElementIndex(ve);
		if (currentIndex>0)
			currentIndex--;
		vec.setElementIndex(ve,currentIndex);
	}
	
}