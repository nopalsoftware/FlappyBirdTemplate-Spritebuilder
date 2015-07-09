#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene{

    float timeToSinceObstacle;

}

- (void)initialize
{
    CharacterP = (Character *) [CCBReader load:@"Character"];
    [physicsNode addChild:CharacterP];
    
    timeToSinceObstacle = 0.0f;
    [self addObstacle];
    
}

-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
    [CharacterP flap];
}

-(void) addObstacle{}
-(void) showScore{}


-(void)update:(CCTime)delta
{
    timeToSinceObstacle += delta;
    
    if (timeToSinceObstacle > 2.0f) {
        
        [self addObstacle];
        timeToSinceObstacle = 0.0f;
    }
}

// put new methods here

@end
