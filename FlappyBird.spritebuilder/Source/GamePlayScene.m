#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    CharacterP = (Character *) [CCBReader load:@"Character"];
    [physicsNode addChild:CharacterP];
    
}

-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
    [CharacterP flap];
}

-(void) addObstacle{}
-(void) showScore{}


-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here

@end
