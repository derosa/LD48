﻿package{
	import flash.display.MovieClip;
	import flash.events.*;
	public class FollowerManager extends MovieClip{
		private var followers:Array = new Array();
		private var leaderStatues:Array = new Array();
		private var speechBubbles:Array = new Array();
		private var meteors:Array = new Array();
		private var maxFollowers:int=50;
		private var startToss:Boolean=false;
		private var startBounce:Boolean=false;
		public function FollowerManager(){
			//setUp();
		}
		
		public function setUp():void{
			spawnNewLeaderStatue();
			spawnNewFollower();
			enableUpdateLoop();
		}
		
		private function disableUpdateLoop():void{
			removeEventListener(Event.ENTER_FRAME, updateLoop);
		}
		
		private function enableUpdateLoop():void{
			addEventListener(Event.ENTER_FRAME, updateLoop);
		}
		
		public function tossAllFollowers(meteor:MovieClip):void{
			startToss = true;
			for(var a:int=0;a<followers.length;a++){
				//trace(a);
				var dist:Number = meteor.x- followers[a].x;
				followers[a].startToss(dist);
			}
		}
		
		public function bounceAllFollowers():void{
			startBounce=true;
			for(var a:int=0;a<followers.length;a++){
				//trace(a);
				followers[a].startBounce();
			}
		}
		
		
		private function updateLoop(e:Event):void{
			
			for(var a:int=0;a<followers.length;a++){
				//trace(a);
				followers[a].updateLoop();
			}
			for(var b:int=0;b<speechBubbles.length;b++){
				//trace(b);
				speechBubbles[b].updateLoop();
				if(speechBubbles[b].getMarkedForDeletion() == true){
					speechBubbles[b].getFollower().allowSpeechBubble();
					Main.theStage.removeChild(speechBubbles[b]);
					speechBubbles.splice(b,1);
				}
			}
			for(var c:int=0;c<meteors.length;c++){
				//trace(c);
				meteors[c].updateLoop();
				if(meteors[c].getMarkedForDeletion() == true){
					//meteors[c].
					Main.theStage.removeChild(meteors[c]);
					meteors.splice(c,1);
				}
			}
		}
		
		public function testFunc():void{
			trace("testFunc");
		}
		
		public function abortCurrentBubble(follower:MovieClip):void{
			for(var i:int=0;i<speechBubbles.length;i++){
				if(speechBubbles[i].getFollower()==follower){
					speechBubbles[i].setTimeExistedToMaxLifeTime();
				}
			}
		}
		
		public function createNewMeteor(follower:MovieClip):void{
			var index:int = followers.indexOf(follower);
			var meteor = new P_METEOR();
			meteor.setFollower(follower);
			meteor.defineSpawnPoint(follower.getLocation(),follower.getVelocity(),follower.getScale());
			meteors.push(meteor);
			
			var dislpayIndex:int = follower.parent.getChildIndex(follower);
			Main.getStage().addChildAt(meteor,dislpayIndex);
			//Main.theStage.addChild(speechBubble);
			//trace("bubble");
		}
		
		public function createNewSpeechBubble(follower:MovieClip,dialog:String="slam jam"):void{
			var index:int = followers.indexOf(follower);
			var speechBubble = new SpeechBubble(follower,dialog);
			speechBubbles.push(speechBubble);
			speechBubble.x = follower.x;
			speechBubble.y = follower.y;
			
			var dislpayIndex:int = follower.parent.getChildIndex(follower);
			Main.getStage().addChildAt(speechBubble,dislpayIndex);
			//Main.theStage.addChild(speechBubble);
			//trace("bubble");
		}
		
		public function spawnNewLeaderStatue():void{
			var leaderStatue = new LeaderStatue();
			leaderStatues.push(leaderStatue);
			leaderStatue.x = 350;
			leaderStatue.y = 468;
			Main.theStage.addChild(leaderStatue);
		}
		
		public function spawnNewFollower():void{
			for(var i:int=0;i<maxFollowers;i++){
				var follower:Follower = new Follower();
				followers.push(follower);
				follower.y+=(i*1.5);
				follower.setGroundPlane(follower.y);
				follower.scaleY = 1 + (i*.05);
				follower.scaleX = 1 + (i*.05);
				Main.theStage.addChild(follower);
			}
		}
		
		
	}
}