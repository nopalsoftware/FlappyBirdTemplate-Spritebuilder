#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene{

    float timeToSinceObstacle;

}

- (void)initialize
{
    character = (Character *) [CCBReader load:@"Character"];
    [physicsNode addChild:character];
    
    timeToSinceObstacle = 0.0f;
    [self addObstacle];
    
}

-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
    [character flap];
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
