﻿package{
	public class Dialogs{
		private var walk_worship:Array = new Array();
		private var walk_happy:Array = new Array();
		private var walk_indifferent:Array = new Array();
		private var walk_upset:Array = new Array();
		private var walk_angry:Array = new Array();
		private var walk_furious:Array = new Array();
		private var walk_dying:Array = new Array();
		private var walk_crazy:Array = new Array();
		
		
		private var lift_worship:Array = new Array();
		private var lift_happy:Array = new Array();
		private var lift_indifferent:Array = new Array();
		private var lift_upset:Array = new Array();
		private var lift_angry:Array = new Array();
		private var lift_furious:Array = new Array();
		private var lift_dying:Array = new Array();
		private var lift_crazy:Array = new Array();
		
		private var fire_worship:Array = new Array();
		private var fire_happy:Array = new Array();
		private var fire_indifferent:Array = new Array();
		private var fire_upset:Array = new Array();
		private var fire_angry:Array = new Array();
		private var fire_furious:Array = new Array();
		private var fire_dying:Array = new Array();
		private var fire_crazy:Array = new Array();
		public function Dialogs(){
			defineDialogs();
		}
		
		private function defineDialogs():void{
			walk_worship = ["I sure do love our almighty leader.",
							"I can't belive Leader allows me in his presence.",
							"I wish that I could devote all my time to Leader.",
							"Leader hears and answers my prayers.",
							"My life is for bringing glory to Leader.",
							"Today is the best day of my life. I will see Leader.",
							"Today is the day. I will be touched by Leader.",
							"Praise Leader.",
							"I can feel Leader in my heart."
							
							]
			lift_worship = ["I am chosen!",
							"Leader has chosen me.",
							"Leader carries me to the heavens.",
							"Leader gives me the power to fly!",
							"Those below me do not give worship as I do.",
							"Flight is the gift of Leader.",
							"Carry me to the heavens oh great Leader.",
							"Praise Leader, I never wish to touch the ground.",
							"The winds of the Leader lift me high."
							]
			fire_worship = ["Leader's love burns me.",
							"Leader blesses me with fire.",
							"The flames are Leader's love!",
							"Leader gives me fire!",
							"I brun with Leader's love",
							"I am Leader's torch!",
							"I am Leader's light!",
							"I am bestowed with fire. Leader chooses me."
							]
		}
		
		public function selectDialog(arrayName:String):String{
			var activeArray:Array = new Array();
			switch(arrayName){
				case "WALK_worship":
					activeArray = walk_worship;
					break;
				case "WALK_happy":
					activeArray = walk_happy;
					break;
				case "WALK_indifferent":
					activeArray = walk_indifferent;
					break;
				case "WALK_upset":
					activeArray = walk_upset;
					break;
				case "WALK_angry":
					activeArray = walk_angry;
					break;
				case "WALK_furious":
					activeArray = walk_furious;
					break;
				case "WALK_dying":
					activeArray = walk_dying;
					break;
				case "WALK_crazy":
					activeArray = walk_crazy;
					break;
					
				case "LIFT_worship":
					activeArray = lift_worship;
					break;
				case "LIFT_happy":
					activeArray = lift_happy;
					break;
				case "LIFT_indifferent":
					activeArray = lift_indifferent;
					break;
				case "LIFT_upset":
					activeArray = lift_upset;
					break;
				case "LIFT_angry":
					activeArray = lift_angry;
					break;
				case "LIFT_furious":
					activeArray = lift_furious;
					break;
				case "LIFT_dying":
					activeArray = lift_dying;
					break;
				case "LIFT_crazy":
					activeArray = lift_crazy;
					break;
				
				case "FIRE_worship":
					activeArray = fire_worship;
					break;
				case "FIRE_happy":
					activeArray = fire_happy;
					break;
				case "FIRE_indifferent":
					activeArray = fire_indifferent;
					break;
				case "FIRE_upset":
					activeArray = fire_upset;
					break;
				case "FIRE_angry":
					activeArray = fire_angry;
					break;
				case "FIRE_furious":
					activeArray = fire_furious;
					break;
				case "FIRE_dying":
					activeArray = fire_dying;
					break;
				case "FIRE_crazy":
					activeArray = fire_crazy;
					break;
			}
			
			var dialogIndex:Number = Math.floor(Math.random()*activeArray.length);
			//trace("activeArray:",activeArray);
			//trace(dialogIndex);
			return activeArray[dialogIndex];
		}
	}
}
		