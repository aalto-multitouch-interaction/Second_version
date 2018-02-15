#pragma once

#include "ofxiOS.h"

class ofApp : public ofxiOSApp {
	
    public:
        void setup();
        void update();
        void draw();
        void exit();
	
        void touchDown(ofTouchEventArgs & touch);
        void touchMoved(ofTouchEventArgs & touch);
        void touchUp(ofTouchEventArgs & touch);
        void touchDoubleTap(ofTouchEventArgs & touch);
        void touchCancelled(ofTouchEventArgs & touch);

        void lostFocus();
        void gotFocus();
        void gotMemoryWarning();
        void deviceOrientationChanged(int newOrientation);
    
    ofVideoGrabber grabber;
    ofTexture tex;
    
    ofPixels pixelStore;
    ofColor Color1;
    ofColor Color2;
    ofColor Color3;
    ofColor Color4;
    ofColor Color5;
    ofColor Color6;
    
    
    ofTrueTypeFont myFont;
    
    
    
    ofImage img;
  
    
    
};


