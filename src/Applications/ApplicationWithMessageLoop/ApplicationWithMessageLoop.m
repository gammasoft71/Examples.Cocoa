#include <Cocoa/Cocoa.h>

NSString* NSEventTypeToNSString(NSEventType eventType);
NSString* NSEventModifierFlagsToNSString(NSEventModifierFlags modifierFlags);

int main(int argc, char* argv[]) {
  [NSApplication sharedApplication];
  NSWindow* window1 = [[[NSWindow alloc] initWithContentRect:NSMakeRect(100, 100, 300, 300) styleMask:NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable backing:NSBackingStoreBuffered defer:NO] autorelease];
  [window1 setIsVisible:YES];
  

  // Creates your own message loop
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
  [NSApp finishLaunching];
  while (true) {
    [pool release];
    pool = [[NSAutoreleasePool alloc] init];
    
    NSEvent* event = [NSApp nextEventMatchingMask:NSEventMaskAny untilDate: [NSDate distantFuture] inMode:NSDefaultRunLoopMode dequeue:YES];
    // --> run your own dispatcher...
    NSLog(@"Event [type=%@ location={%d, %d} modifierFlags={%@}]", NSEventTypeToNSString([event type]), (int)[event locationInWindow].x, (int)[event locationInWindow].y, NSEventModifierFlagsToNSString([event modifierFlags]));
    // <--
    
    [NSApp sendEvent:event];
    [NSApp updateWindows];
  }
  [pool release];
}

NSString* NSEventTypeToNSString(NSEventType eventType) {
  switch (eventType) {
    case NSEventTypeLeftMouseDown: return @"LeftMouseDown";
    case NSEventTypeLeftMouseUp: return @"LeftMouseUp";
    case NSEventTypeRightMouseDown: return @"RightMouseDown";
    case NSEventTypeRightMouseUp: return @"RightMouseUp";
    case NSEventTypeMouseMoved: return @"MouseMoved";
    case NSEventTypeLeftMouseDragged: return @"LeftMouseDragged";
    case NSEventTypeRightMouseDragged: return @"RightMouseDragged";
    case NSEventTypeMouseEntered: return @"MouseEntered";
    case NSEventTypeMouseExited: return @"MouseExited";
    case NSEventTypeKeyDown: return @"KeyDown";
    case NSEventTypeKeyUp: return @"KeyUp";
    case NSEventTypeFlagsChanged: return @"FlagsChanged";
    case NSEventTypeAppKitDefined: return @"AppKitDefined";
    case NSEventTypeSystemDefined: return @"SystemDefined";
    case NSEventTypeApplicationDefined: return @"ApplicationDefined";
    case NSEventTypePeriodic: return @"Periodic";
    case NSEventTypeCursorUpdate: return @"CursorUpdate";
    case NSEventTypeScrollWheel: return @"ScrollWheel";
    case NSEventTypeTabletPoint: return @"TabletPoint";
    case NSEventTypeTabletProximity: return @"TabletProximity";
    case NSEventTypeOtherMouseDown: return @"OtherMouseDown";
    case NSEventTypeOtherMouseUp: return @"OtherMouseUp";
    case NSEventTypeOtherMouseDragged: return @"OtherMouseDragged";
    default: return [NSString stringWithFormat:@"%lu", eventType];
  }
}

NSString* NSEventModifierFlagsToNSString(NSEventModifierFlags modifierFlags) {
  NSString* result = @"";
  if ((modifierFlags & NSEventModifierFlagCapsLock) == NSEventModifierFlagCapsLock) result = [result stringByAppendingString:@"CapsLock, "];
  if ((modifierFlags & NSEventModifierFlagShift) == NSEventModifierFlagShift) result = [result stringByAppendingString:@"NShift, "];
  if ((modifierFlags & NSEventModifierFlagControl) == NSEventModifierFlagControl) result = [result stringByAppendingString:@"Control, "];
  if ((modifierFlags & NSEventModifierFlagOption) == NSEventModifierFlagOption) result = [result stringByAppendingString:@"Option, "];
  if ((modifierFlags & NSEventModifierFlagCommand) == NSEventModifierFlagCommand) result = [result stringByAppendingString:@"Command, "];
  if ((modifierFlags & NSEventModifierFlagNumericPad) == NSEventModifierFlagNumericPad) result = [result stringByAppendingString:@"NumericPad, "];
  if ((modifierFlags & NSEventModifierFlagHelp) == NSEventModifierFlagHelp) result = [result stringByAppendingString:@"Help, "];
  if ((modifierFlags & NSEventModifierFlagFunction) == NSEventModifierFlagFunction) result = [result stringByAppendingString:@"Function, "];
  return result;
}

