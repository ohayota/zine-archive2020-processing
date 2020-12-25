public class LargeImagePage2 extends Page {
  
  private Image[] largeImages;
  
  public LargeImagePage2(Section section, PImage[] largeImages) {
    super(section);
    this.largeImages = new Image[]{ new Image(largeImages[0], width/2-int(areaHeight/2*0.99)/2, height/2-areaHeight/2,
                                              int(areaHeight/2*0.99), int(areaHeight/2*0.99)),
                                    new Image(largeImages[1], width/2-int(areaHeight/2*0.99)/2, height/2+areaHeight/2-int(areaHeight/2*0.99),
                                              int(areaHeight/2*0.99), int(areaHeight/2*0.99)) };
  }
  
  public void draw() {
    super.draw();
    
    for (Image image: largeImages) {
      image.draw();
    }
  }
  
}
