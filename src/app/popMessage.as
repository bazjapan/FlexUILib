package app
{

	
	import flash.display.DisplayObject;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.collections.ArrayCollection;
	import mx.core.Application;
	import mx.core.IChildList;
	import mx.core.UIComponent;
	import mx.managers.PopUpManager;

	/**
	 *Message to show
	 * Time to show
	 * Text Size
	 * callback when message is closed
	 * Usage:popMessage("Audio Added",2000,24,function():void
				{
				trace("popmessage closed");
				//do something
				} 
	 */	
	public function popMessage(message:String, time:int = 2000, textSize:int =24, completeFunc:Function = null):void
	{
		var all:ArrayCollection = getAllPopups();
		for each (var ui:UIComponent in all)
		{
		if(ui is Message)
		{
		PopUpManager.removePopUp(ui);
		}
		}
		
		var timer:Timer = new Timer(time,1);
		var messageBox:Message = new Message;
		messageBox.message = message;
		messageBox.textSize = textSize;
		messageBox.alpha = 0.5;
		
		PopUpManager.addPopUp(messageBox,Application.application as DisplayObject);
		PopUpManager.centerPopUp(messageBox);
		
		timer.addEventListener(TimerEvent.TIMER,function(te:TimerEvent):void
		{
			PopUpManager.removePopUp(messageBox);
			timer = null;
			if(completeFunc != null){completeFunc();}
		});
		timer.start();
		
		
		function getAllPopups(applicationInstance: Object = null,
													onlyVisible: Boolean = false): ArrayCollection
		{
			var result: ArrayCollection = new ArrayCollection();
			
			if (applicationInstance == null)
			{
				applicationInstance = Application.application;
			}
			
			var rawChildren: IChildList = applicationInstance.systemManager.rawChildren;
			
			for (var i: int = 0; i < rawChildren.numChildren; i++)
			{
				var currRawChild: DisplayObject = rawChildren.getChildAt(i);
				
				if ((currRawChild is UIComponent) && UIComponent(currRawChild).isPopUp)
				{
					if (!onlyVisible || UIComponent(currRawChild).visible)
					{
						result.addItem(currRawChild);
					}
				}
			}
			
			return result;
		}

		
	}
	
}