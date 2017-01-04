raw_captions = ["This map shows many of the peaks and other places of interest mentioned in the chapters. Ojos del Salado is south of the Great Plateau on the border with Argentina.","Giancarlo at the rear of his truck with James on the roof.","The scene from the Pass, with Laguna Santa Rosa below and Tres Cruces in the distance.","The Santa Rosa Refugio with Giancarlo's Land Cruiser alongside.","Giancarlo on the way into the old Carabinero Station, which has been relocated to the shores of Laguna Verde since this photo was taken in 1992.","Our Base Camp at <span class=\"height\">14,800' (4510 m)</span>; in the distance, El Muerto (<span class=\"height\">21,286', 6488 m</span>) is on the left and Ojos on the right.","A storm buries Ojos. <span class=\"attribution\">R. Villarreal Collection.</span>","Early morning scene with the moon still visible.","On the road to the Atacama Refugio.","Refugio Atacama (<span class=\"height\">16,730', 5100 m</span>). Although it looks quite spartan, it's actually quite comfortable.","A stream fed by snowfields higher on the mountain flows by Atacama.","The road leading to Refugio Tejos (<span class=\"height\">18,860', 5750 m</span>). It's hard to believe a road exists this high.","Another shot of the road.","On the way to the Tejos Refugio with the Atacama far below. A road this high is unheard of! <span class=\"attribution\">R. Villarreal Collection.</span>","The Refugio is right behind me. The imposing northern face of Ojos del Salado (<span class=\"height\">22,609', 6891 m</span>).","Another view from Tejos.","Another view. The sphinx-like paw of the First Step is partially in view. One may discern the other four steps above proceeding towards the summit. I placed my camp above Tejos on the First Step.","My First Step camp.","Another shot; El Muerto in the distance.","View of El Muerto from the Third Step.","Looking back down the Steps.","Another view: the First Step quite a ways down.","On top of the Fifth Step looking over at El Muerto (<span class=\"height\">21,247', 6476 m</span>). El Fraile (<span class=\"height\">19,614', 5978 m</span>) is in the mid-distance with Incahuasi (<span class=\"height\">21,651', 6599 m</span>) farther on. Summit is behind me and a little higher.","View from the summit looking south/southwest. In the near distance on the right is Cazadero (aka Walter Penck). At <span class=\"height\">21,838' (6656 m)</span> it is the ninth highest peak. Farther on to the left is the darkened mass of Nacimiento (<span class=\"height\">21,126', 6439 m</span>). In the far distance is Pissis (<span class=\"height\">22,287', 6793 m</span>), the third highest peak.","From the summit: Tres Cruces rises in the west, with Central on the left and Sur on the right.","James signs the summit register. This wasn't exactly his best side!","Looking into the mouth of the summit crater.","Self photo after James leaves.","We descend by way of the massive north face; the Tejos refugio is barely visible far below.","A magnificent sunset from our Base Camp.","We depart the Ojos region on the return to Copiapo. Barrancas Blancas on the right, Ojos del Salado in the center, and El Muerto to the left. <span class=\"attribution\">R. Villarreal Collection.</span>"]
raw_filenames = ["<img src=\"Photos/1/image2.png\" id=\"image2\" />","<img src=\"Photos/1/image3.jpg\" id=\"image3\" />","<img src=\"Photos/1/image4.jpg\" id=\"image4\" />","<img src=\"Photos/1/image5.jpg\" id=\"image5\" />","<img src=\"Photos/1/image6.jpg\" id=\"image6\" />","<img src=\"Photos/1/image7.jpg\" id=\"image7\" />","<img src=\"Photos/1/imageA1.jpg\" id=\"image8\" />","<img src=\"Photos/1/image8.jpg\" id=\"image9\" />","<img src=\"Photos/1/image9.jpg\" id=\"image10\" />","<img src=\"Photos/1/image10.jpg\" id=\"image11\" />","<img src=\"Photos/1/image11.jpg\" id=\"image12\" />","<img src=\"Photos/1/image12.jpg\" id=\"image13\" />","<img src=\"Photos/1/image13.jpg\" id=\"image14\" />","<img src=\"Photos/1/imageA2.jpg\" id=\"image15\" />","<img src=\"Photos/1/image14.jpg\" id=\"image16\" />","<img src=\"Photos/1/image15.jpg\" id=\"image17\" />","<img src=\"Photos/1/image16.jpg\" id=\"image18\" />","<img src=\"Photos/1/image17.jpg\" id=\"image19\" />","<img src=\"Photos/1/image18.jpg\" id=\"image20\" />","<img src=\"Photos/1/image19.jpg\" id=\"image21\" />","<img src=\"Photos/1/image20.jpg\" id=\"image22\" />","<img src=\"Photos/1/image21.jpg\" id=\"image23\" />","<img src=\"Photos/1/image22.jpg\" id=\"image24\" />","<img src=\"Photos/1/image23.jpg\" id=\"image25\" />","<img src=\"Photos/1/image24.jpg\" id=\"image26\" />","<img src=\"Photos/1/image25.jpg\" id=\"image27\" />","<img src=\"Photos/1/image26.jpg\" id=\"image28\" />","<img src=\"Photos/1/image27.jpg\" id=\"image29\" />","<img src=\"Photos/1/image28.jpg\" id=\"image30\" />","<img src=\"Photos/1/image29.png\" id=\"image31\" />","<img src=\"Photos/1/image30.jpg\" id=\"image32\" />"]

label_index = 0

raw_captions.each_with_index do |caption, index|
  puts "-"
  puts "  caption: \"#{caption.gsub("\"", "\\\\\\\\\\\\\"")}\""
  filename = raw_filenames[index][raw_filenames[index].index("image")..raw_filenames[index].index("\" ") - 1]
  puts "  filename: #{filename}"
  image_label = filename[5..filename.index(".") - 1]
  if "#{label_index}" != image_label
    puts "  label: #{image_label}"
  else
    label_index += 1
  end
end