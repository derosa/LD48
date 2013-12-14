﻿package{
	import flash.display.MovieClip;
	import flash.events.*;
	public class FollowerManager extends MovieClip{
		private var followers:Array = new Array();
		private var maxFollowers:int=50;
		public function FollowerManager(){
			//setUp();
		}
		
		public function setUp():void{
			spawnNewFollower();
			enableUpdateLoop();
		}
		
		private function disableUpdateLoop():void{
			removeEventListener(Event.ENTER_FRAME, updateLoop);
		}
		
		private function enableUpdateLoop():void{
			addEventListener(Event.ENTER_FRAME, updateLoop);
		}
		
		private function updateLoop(e:Event):void{
			for(var i:int=0;i<followers.length;i++){
				//trace(i);
				followers[i].updateLoop();
			}
		}
		
		public function testFunc():void{
			trace("testFunc");
		}
		
		public function spawnNewFollower():void{
			for(var i:int=0;i<maxFollowers;i++){
				var follower:Follower = new Follower();
				followers.push(follower);
				follower.y+=(i*1.5);
				follower.scaleY = 1 + (i*.05);
				follower.scaleX = 1 + (i*.05);
				Main.theStage.addChild(follower);
			}
		}
	}
}