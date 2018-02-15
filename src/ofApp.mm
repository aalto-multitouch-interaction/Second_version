#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    // test.load("test_image.png");
    ofSetOrientation(OF_ORIENTATION_DEFAULT);
    ofSetCircleResolution(500);
    grabber.setup(480, 360, OF_PIXELS_BGRA);
    tex.allocate(grabber.getWidth(), grabber.getHeight(), GL_RGB);
    
    myFont.loadFont("ClearSans-Light.ttf", 7);
   
    //Color1.set(0);
    //Color2.set(0);
    //Color3.set(0);
    //Color4.set(0);
    
}

//--------------------------------------------------------------
void ofApp::update(){
    
    float width = grabber.getWidth();
    float height = grabber.getHeight();
    
    grabber.update();
    //pixelStore = grabber.getPixels();
    
    if(grabber.isFrameNew()) {
        
        // We have a new frame from the webcam feed, so it's time to recalculate
        // the average color of our desired region
        
        // Get the pixels from the video grabber
        pixelStore = grabber.getPixels();
        
//        cout << pixelStore.size() << endl;
        
        // Set up variables to calculate the sum of the r, g and b channels
        int rSum = 0;
        int gSum = 0;
        int bSum = 0;
        
        int rSum2 = 0;
        int gSum2 = 0;
        int bSum2 = 0;
        
        int rSum3 = 0;
        int gSum3 = 0;
        int bSum3 = 0;
        
        int rSum4 = 0;
        int gSum4 = 0;
        int bSum4 = 0;
        
        int rSum5 = 0;
        int gSum5 = 0;
        int bSum5 = 0;

        int rSum6 = 0;
        int gSum6 = 0;
        int bSum6 = 0;
        
        
        
        // Loop through a region of the video feed to get the color sums
        for(int x = 0; x < width/2; x++) {
            for(int y = 0; y < height/3; y++) {
                ofColor pixelColor = pixelStore.getColor(x, y);
                rSum += pixelColor.r;
                gSum += pixelColor.g;
                bSum += pixelColor.b;
                
//                cout << "loop 1" << endl;
            }
        }
        
        for(int x = width/2; x < width; x++) {
            for(int y = 0; y < height/3; y++) {
                ofColor pixelColor = pixelStore.getColor(x, y);
                rSum2 += pixelColor.r;
                gSum2 += pixelColor.g;
                bSum2 += pixelColor.b;
                
//                cout << "loop 2" << endl;
            }
        }
        
        for(int x = 0; x < width/2; x++) {
            for(int y = height/3; y < height-height/3; y++) {
                ofColor pixelColor = pixelStore.getColor(x, y);
                rSum3 += pixelColor.r;
                gSum3 += pixelColor.g;
                bSum3 += pixelColor.b;
                
//                cout << "loop 3" << endl;
            }
        }
//
        for(int x = width/2; x < width; x++) {
            for(int y = height/3; y < height-height/3; y++) {
                ofColor pixelColor = pixelStore.getColor(x, y);
                rSum4 += pixelColor.r;
                gSum4 += pixelColor.g;
                bSum4 += pixelColor.b;
                
//                cout << "loop 4" << endl;
            }
        }

        for(int x = 0; x < width/2; x++) {
            for(int y = height-height/3; y < height; y++) {
                ofColor pixelColor = pixelStore.getColor(x, y);
                rSum5 += pixelColor.r;
                gSum5 += pixelColor.g;
                bSum5 += pixelColor.b;

//                cout << "x: " << x << " " << "y: "<< y << endl;
            }
        }

        for(int x = width/2; x < width; x++)  {
            for(int y = height-height/3; y < height; y++) {
                ofColor pixelColor = pixelStore.getColor(x, y);
                rSum6 += pixelColor.r;
                gSum6 += pixelColor.g;
                bSum6 += pixelColor.b;
                
//                cout << "x: " << x << " " << "y: "<< y << endl;
            }
        }
        
        int samples = width/2 * height/3; // The number of pixels we are averaging
        
        
        // Update the average color
        Color1.r = rSum / samples;
        Color1.b = bSum / samples;
        Color1.g = gSum / samples;
        
        Color2.r = rSum2 / samples;
        Color2.b = bSum2 / samples;
        Color2.g = gSum2 / samples;
        
        Color3.r = rSum3 / samples;
        Color3.b = bSum3 / samples;
        Color3.g = gSum3 / samples;
        
        Color4.r = rSum4 / samples;
        Color4.b = bSum4 / samples;
        Color4.g = gSum4 / samples;

        Color5.r = rSum5 / samples;
        Color5.b = bSum5 / samples;
        Color5.g = gSum5 / samples;

        Color6.r = rSum6 / samples;
        Color6.b = bSum6 / samples;
        Color6.g = gSum6 / samples;
    }
    
//    int test = (ofGetHeight()/3);
//    cout << test << endl;
    
    
    //cout << pixelStore.getColor(currentPixel.x, currentPixel.y) << endl;
   // Color1 = pixelStore.getColor(80,95);
//    Color2 = pixelStore.getColor(240, 95);
//    Color3 = pixelStore.getColor(80, 284);
//    Color4 = pixelStore.getColor(240, 284);
//    Color5 = pixelStore.getColor(80, 473);
//    Color6 = pixelStore.getColor(240, 473);
    
    
    
    
}

//--------------------------------------------------------------
void ofApp::draw(){
    
    //ofDrawRectangle(0, 0, ofGetWidth(), ofGetHeight());
    ofEnableAlphaBlending();
    ofSetColor(255,220);
    grabber.draw(0, 0, ofGetWidth(),ofGetHeight());
    //ofSetColor(50);
    
    int Color1r = Color1.r;
    int Color1g = Color1.g;
    int Color1b = Color1.b;
    
    int Color2r = Color2.r;
    int Color2g = Color2.g;
    int Color2b = Color2.b;
    
    int Color3r = Color3.r;
    int Color3g = Color3.g;
    int Color3b = Color3.b;
    
    int Color4r = Color4.r;
    int Color4g = Color4.g;
    int Color4b = Color4.b;
    
    int Color5r = Color5.r;
    int Color5g = Color5.g;
    int Color5b = Color5.b;
    
    int Color6r = Color6.r;
    int Color6g = Color6.g;
    int Color6b = Color6.b;
    
    ofPushStyle();
    ofSetColor(Color1);
    ofFill();
    ofDrawEllipse(80, 95, 80,80);
    ofSetColor(0);
    myFont.drawString(ofToString(Color1r)+"."+ofToString(Color1g)+"."+ofToString(Color1b), 80, 120);

    
    ofSetColor(Color2);
    ofFill();
    ofDrawEllipse(240, 95, 80,80);
    ofSetColor(0);
    myFont.drawString(ofToString(Color2r)+"."+ofToString(Color2g)+"."+ofToString(Color2b), 240, 120);

    
    ofSetColor(Color3);
    ofFill();
    ofDrawEllipse(80, 284, 80,80);
    ofSetColor(0);
    myFont.drawString(ofToString(Color3r)+"."+ofToString(Color3g)+"."+ofToString(Color3b), 80, 309);

    
    ofSetColor(Color4);
    ofFill();
    ofDrawEllipse(240, 284, 80,80);
    ofSetColor(0);
    myFont.drawString(ofToString(Color4r)+"."+ofToString(Color4g)+"."+ofToString(Color4b), 240, 309);

    
    ofSetColor(Color5);
    ofFill();
    ofDrawEllipse(80, 473, 80,80);
    ofSetColor(0);
    myFont.drawString(ofToString(Color5r)+"."+ofToString(Color5g)+"."+ofToString(Color5b), 80, 498);

    
    ofSetColor(Color6);
    ofFill();
    ofDrawEllipse(240, 473, 80,80);
    ofSetColor(0);
    myFont.drawString(ofToString(Color6r)+"."+ofToString(Color6g)+"."+ofToString(Color6b), 240, 498);

    
    ofPopStyle();
    
    
    
}

//--------------------------------------------------------------
void ofApp::exit(){
    
}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    
// ofEnableAlphaBlending();
  // ofSetColor(200,30);
  //  ofDrawRectangle(0, 0, ofGetWidth(), ofGetHeight());
    
    ofxiOSAppDelegate * delegate = ofxiOSGetAppDelegate();
    ofxiOSScreenGrab(delegate);
    
    //cout << Color1 << endl;
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){
    
    
}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){
    
}

//--------------------------------------------------------------
void ofApp::gotFocus(){
    
}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){
    
}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){
    
}

