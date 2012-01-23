package utils.ac
{
	import mx.collections.ArrayCollection;

	public function moveItemDown(item:Object, ac:ArrayCollection):void
	{
		var oldIndex:int = ac.getItemIndex(item);
		var max:int = ac.length-1;
		if(oldIndex<max)
		{
			var newIndex:int = oldIndex+1;
			var jyama:Object = ac.getItemAt(newIndex);
			ac.setItemAt(item,newIndex);
			ac.setItemAt(jyama,oldIndex);
		}
	}
	
}

/*var selected_field:Field = lt_fields.selectedItem;
				if(selected_field == null){return;};
				moveItemDown(selected_field,fields);
				fields.refresh();
				lt_fields.selectedItem = selected_field;*/