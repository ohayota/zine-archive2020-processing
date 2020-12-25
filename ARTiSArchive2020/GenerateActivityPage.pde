// サークル活動アーカイブページ生成
ArrayList<Page> generateActivityPages(Section section) {
  
  switch (section) {
    case artis_logo:
      return generateActivityLogoPages(section);
    case artis_website:
      return generateActivityWebsitePages(section);
    case artis_exhibition:
      return generateActivityExhibitionPages(section);
    case artis_workshop:
      return generateActivityWorkshopPages(section);
    default:
      return null;
  }
}



// Logoページ
ArrayList<Page> generateActivityLogoPages(Section section) {
  ArrayList<Page> pages = new ArrayList<Page>();
  PImage img = loadImage(section.getPath() + "image.png");
  
  Page p = new DescriptionPage(section,
                               txtToString(section.getPath() + "title.txt"),
                               txtToString(section.getPath() + "main.txt"),
                               marginVertical+titleBottomPadding + convertImageHeight(img, areaWidth) + 24,
                               new Image(img, marginHorizontal, marginVertical+titleBottomPadding, areaWidth, convertImageHeight(img, areaWidth) ));
  pages.add(p);
  
  return pages;
}

// Websiteページ
ArrayList<Page> generateActivityWebsitePages(Section section) {
  ArrayList<Page> pages = new ArrayList<Page>();
  Page p;
  
  p = new DescriptionPage(section,
                          txtToString(section.getPath() + "title.txt"),
                          txtToString(section.getPath() + "main.txt"));
  pages.add(p);
  p = new LargeImagePage(section, loadImage(section.getPath() + "image.png"));
  pages.add(p);
  
  return pages;
}

// 作品展ページ
ArrayList<Page> generateActivityExhibitionPages(Section section) {
  ArrayList<Page> pages = new ArrayList<Page>();
  
  Page p;
  PImage img, img1, img2;
  
  // Unity
  img = loadImage(section.getPath() + "unity/image.png");
  p = new DescriptionPage(section,
                          txtToString(section.getPath() + "unity/title.txt"),
                          txtToString(section.getPath() + "unity/main.txt"),
                          marginVertical+titleBottomPadding + convertImageHeight(img, areaWidth) + 24,
                          new Image(img, marginHorizontal, marginVertical+titleBottomPadding, areaWidth, convertImageHeight(img, areaWidth)));
  pages.add(p);
  
  // STYLY
  img1 = loadImage(section.getPath() + "styly/image1.png");
  //img2 = loadImage(section.getPath() + "styly/image2.png");
  p = new DescriptionPage(section,
                          txtToString(section.getPath() + "styly/title.txt"),
                          txtToString(section.getPath() + "styly/main.txt"),
                          marginVertical+titleBottomPadding + convertImageHeight(img1, areaWidth) + 24,
                          new Image(img1, marginHorizontal, marginVertical+titleBottomPadding, areaWidth, convertImageHeight(img1, areaWidth)));
  pages.add(p);
  
  // Mozilla Hubs
  img = loadImage(section.getPath() + "mozilla/image.png");
  p = new DescriptionPage(section,
                          txtToString(section.getPath() + "mozilla/title.txt"),
                          txtToString(section.getPath() + "mozilla/main.txt"),
                          marginVertical+titleBottomPadding + convertImageHeight(img, areaWidth) + 24,
                          new Image(img, marginHorizontal, marginVertical+titleBottomPadding, areaWidth, convertImageHeight(img, areaWidth) ));
  pages.add(p);
  
  return pages;
}

// Workshopページ
ArrayList<Page> generateActivityWorkshopPages(Section section) {
  ArrayList<Page> pages = new ArrayList<Page>();
  
  PImage img;
  Page p;
  
  img = loadImage(section.getPath() + "workshop1/image.png");
  p = new DescriptionPage(section,
                          txtToString(section.getPath() + "workshop1/title.txt"),
                          txtToString(section.getPath() + "workshop1/main.txt"),
                          marginVertical+titleBottomPadding + convertImageHeight(img, areaWidth) + 24,
                          new Image(img, marginHorizontal, marginVertical+titleBottomPadding,
                                    areaWidth, convertImageHeight(img, areaWidth) ),
                          new CodeBlock(txtToString(section.getPath() + "workshop1/code.txt"),
                                        marginHorizontal, 538, int(areaWidth*(1.99/3.0)), areaHeight-(538-marginVertical)),
                          new SmallTextBlock(txtToString(section.getPath() + "workshop1/small.txt"),
                                             width-marginHorizontal-int(areaWidth*(0.99/3.0)), 538,
                                             int(areaWidth*(0.99/3.0)), areaHeight-(538-marginVertical)));
  pages.add(p);
  
  return pages;
}
