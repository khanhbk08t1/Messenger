//
// Copyright (c) 2016 Related Code - http://relatedcode.com
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "utilities.h"
 
@implementation Audio

//-------------------------------------------------------------------------------------------------------------------------------------------------
+ (NSNumber *)duration:(NSString *)path
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	AVURLAsset *asset = [AVURLAsset URLAssetWithURL:[NSURL fileURLWithPath:path] options:nil];
	NSInteger duration = (NSInteger) round(CMTimeGetSeconds(asset.duration));
	return @(duration);
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
+ (void)playMessageIncoming
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	NSString *path = [Dir application:@"rcmessage_incoming.aiff"];
	[[RCAudioPlayer sharedPlayer] playSound:path];
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
+ (void)playMessageOutgoing
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	NSString *path = [Dir application:@"rcmessage_outgoing.aiff"];
	[[RCAudioPlayer sharedPlayer] playSound:path];
}

@end
